--[[
	frame.lua
		A combuctor frame object

	Set Events:
		COMBUCTOR_SET_ADD:
			name
				If visible, then update side tabs + highlight

		COMBUCTOR_SET_UPDATE:
			name, icon, rule
				if visible, then update side tabs + highlight
				If we're showing set, then need to update rule

		COMBUCTOR_SUBSET_ADD:
			name, parent, icon, rule
				if visible and we're showing parent set, then update bottom tabs + highlight

		COMBUCTOR_SUBSET_UPDATE:
			name, parent, icon, rule
				if visible and we're showing parent set, then update bottom tabs + highlight
				If on subset, then need to update rule

		COMBUCTOR_SET_REMOVE:
			name
				If visible, then update side tabs + highlight
				If on set, then need to switch to default set

		COMBUCTOR_SUBSET_REMOVE
			name, parent:
				If visible and on parent set, then need to update subsets
				If on subset, then need to switch to default subset

		COMBUCTOR_CONFIG_SET_ADD
		COMBUCTOR_CONFIG_SET_REMOVE
			key, name
				If visible, and self.key == key, then update sets


	User Events:
		User shows frame:
			Show default set + subset
			In the future, should create events (show keys) that map to set + subset

		User clicks on set:
			Switch to set, switch to default subset of that set

		User clicks on subset:
			Switch to given subset
--]]

local FrameEvents = Combuctor:NewModule('FrameEvents', 'AceEvent-3.0')
do
	local frames = {}

	function FrameEvents:OnEnable()
		self:RegisterMessage('COMBUCTOR_SET_ADD', 'UpdateSets')
		self:RegisterMessage('COMBUCTOR_SET_UPDATE', 'UpdateSets')
		self:RegisterMessage('COMBUCTOR_SET_REMOVE', 'UpdateSets')

		self:RegisterMessage('COMBUCTOR_CONFIG_SET_ADD', 'UpdateSetConfig')
		self:RegisterMessage('COMBUCTOR_CONFIG_SET_REMOVE', 'UpdateSetConfig')

		self:RegisterMessage('COMBUCTOR_SUBSET_ADD', 'UpdateSubSets')
		self:RegisterMessage('COMBUCTOR_SUBSET_UPDATE', 'UpdateSubSets')
		self:RegisterMessage('COMBUCTOR_SUBSET_REMOVE', 'UpdateSubSets')

		self:RegisterMessage('COMBUCTOR_CONFIG_SUBSET_ADD', 'UpdateSubSetConfig')
		self:RegisterMessage('COMBUCTOR_CONFIG_SUBSET_REMOVE', 'UpdateSubSetConfig')
	end

	function FrameEvents:UpdateSets(msg, name)
		for f in self:GetFrames() do
			if f:HasSet(name) then
				f:UpdateSets()
			end
		end
	end

	function FrameEvents:UpdateSetConfig(msg, key, name)
		for f in self:GetFrames() do
			if f.key == key then
				f:UpdateSets()
			end
		end
	end

	function FrameEvents:UpdateSubSetConfig(msg, key, name, parent)
		for f in self:GetFrames() do
			if f.key == key and f:GetCategory() == parent then
				f:UpdateSubSets()
			end
		end
	end

	function FrameEvents:UpdateSubSets(msg, name, parent)
		for f in self:GetFrames() do
			if f:GetCategory() == parent then
				f:UpdateSubSets()
			end
		end
	end


	function FrameEvents:Register(f)
		frames[f] = true
	end

	function FrameEvents:Unregister(f)
		frames[f] = nil
	end

	function FrameEvents:GetFrames()
		return pairs(frames)
	end
end


local InventoryFrame  = Combuctor:NewClass('Frame')
Combuctor.Frame = InventoryFrame

--local references
local _G = getfenv(0)
local L = LibStub('AceLocale-3.0'):GetLocale('Combuctor')
local CombuctorSet = Combuctor:GetModule('Sets')

--constants
local BASE_WIDTH = 500
local ITEM_FRAME_WIDTH_OFFSET = 428 - BASE_WIDTH
local BASE_HEIGHT = 600
local ITEM_FRAME_HEIGHT_OFFSET = 434 - BASE_HEIGHT


--frame constructor
local lastID = 1
function InventoryFrame:New(titleText, settings, isBank, key)
	local f = self:Bind(CreateFrame('Frame', format('CombuctorFrame%d', lastID), UIParent, 'CombuctorInventoryTemplate'))
	f:SetScript('OnShow', self.OnShow)
	f:SetScript('OnHide', self.OnHide)

	f.sets = settings
	f.isBank = isBank
	f.key = key --backthingy to get our sv index
	f.titleText = titleText

	f.bagButtons = {}
	f.filter = {}

--	f:SetWidth(settings.w or BASE_WIDTH)
--	f:SetHeight(settings.h or BASE_HEIGHT)

	f.title = _G[f:GetName() .. 'Title']

	f.sideFilter = Combuctor.SideFilter:New(f, f:IsSideFilterOnLeft())

	f.bottomFilter = Combuctor.BottomFilter:New(f)

	f.nameFilter = _G[f:GetName() .. 'Search']

	f.qualityFilter = Combuctor.QualityFilter:New(f)
	f.qualityFilter:SetPoint('BOTTOMLEFT', 24, 65)

	f.itemFrame = Combuctor.ItemFrame:New(f)
	f.itemFrame:SetPoint('TOPLEFT', 24, -78)

	f.moneyFrame = Combuctor.MoneyFrame:New(f)
	f.moneyFrame:SetPoint('BOTTOMRIGHT', -40, 67)


	--load what the title says
	f:UpdateTitleText()

	--update if bags are shown or not
	f:UpdateBagToggleHighlight()
	f:UpdateBagFrame()

	--place the frame
	f.sideFilter:UpdateFilters()
	f:LoadPosition()
	f:UpdateClampInsets()
	f:EnableMouseWheel(true) 


	lastID = lastID + 1
	f:SetScript('OnEvent',self.OnEvent)
	if f.isBank then
		f:RegisterEvent('BANKFRAME_OPENED')
	end
	
	table.insert(UISpecialFrames, f:GetName())

	return f
end


--[[
	Title Frame
--]]

function InventoryFrame:UpdateTitleText()
	self.title:SetFormattedText(string.format(L.InventoryTitle, GetUnitName("player")));
end

function InventoryFrame:OnTitleEnter(title)
	BigFoot_ShowNewbieTooltip(title:GetText(), L.MoveTip, L.ResetPositionTip, L.ScrollToZoom);
end


--[[
	Bag Toggle
--]]

function InventoryFrame:OnBagToggleClick(toggle, button)
	if button == 'LeftButton' then
		_G[toggle:GetName() .. 'Icon']:SetTexCoord(0.075, 0.925, 0.075, 0.925)
		self:ToggleBagFrame()
	else
		if self.isBank then
			Combuctor:Toggle(BACKPACK_CONTAINER)
		else
			Combuctor:Toggle(BANK_CONTAINER)
			
		end
	end
end

function InventoryFrame:OnBagToggleEnter(toggle)
	GameTooltip:SetOwner(toggle, 'ANCHOR_LEFT')
	GameTooltip:SetText(L.Bags, 1, 1, 1)
	GameTooltip:AddLine(L.BagToggle)

	if self.isBank then
		GameTooltip:AddLine(L.InventoryToggle)
	else
		GameTooltip:AddLine(L.BankToggle)
	end
	GameTooltip:Show()
end

function InventoryFrame:OnPortraitEnter(portrait)
	GameTooltip:SetOwner(portrait, 'ANCHOR_RIGHT')
	GameTooltip:SetText(self:GetPlayer(), 1, 1, 1)
	GameTooltip:AddLine(L.SwitchChar)
	GameTooltip:Show()
end


--[[
	Bag Frame
--]]

function InventoryFrame:ToggleBagFrame()
	self.sets.showBags = not self.sets.showBags
	self:UpdateBagToggleHighlight()
	self:UpdateBagFrame()
end

function InventoryFrame:UpdateBagFrame()
	--remove all the current bags
	for i,bag in pairs(self.bagButtons) do
		self.bagButtons[i] = nil
		bag:Release()
	end

	if self.sets.showBags then
		for _,bagID in ipairs(self.sets.bags) do
			if bagID ~= KEYRING_CONTAINER then
				local bag = Combuctor.Bag:Get()
				bag:Set(self, bagID)
				table.insert(self.bagButtons, bag)
			end
		end

		for i,bag in ipairs(self.bagButtons) do
			bag:ClearAllPoints()
			if i > 1 then
				bag:SetPoint('TOP', self.bagButtons[i-1], 'BOTTOM', 0, -6)
			else
				bag:SetPoint('TOPRIGHT', -48, -82)
			end
			bag:Show()
		end
	end

	self:OnItemFrameSizeChanged()
end

function InventoryFrame:UpdateBagToggleHighlight()
	if self.sets.showBags then
		_G[self:GetName() .. 'BagToggle']:LockHighlight()
	else
		_G[self:GetName() .. 'BagToggle']:UnlockHighlight()
	end
end


--[[
	Filtering
--]]

--[[ Generic ]]--

function InventoryFrame:SetFilter(key, value)
	if self.filter[key] ~= value then
		self.filter[key] = value

		self.itemFrame:Regenerate()
		return true
	end
end

function InventoryFrame:GetFilter(key)
	return self.filter[key]
end


--[[ Player ]]--

function InventoryFrame:SetPlayer(player)
	if self:GetPlayer() ~= player then
		self.player = player

		self:UpdateTitleText()
		self:UpdateBagFrame()
		self:UpdateSets()

		self.itemFrame:SetPlayer(player)
		self.moneyFrame:Update()
	end
	self.myitemcount=self.itemFrame.count
	self:SetItemFrameSize()
	self:OnItemFrameSizeChanged()

end

function InventoryFrame:GetPlayer()
	return self.player or UnitName('player')
end


--[[ Sets and Subsets ]]--

function InventoryFrame:UpdateSets(category)
	self.sideFilter:UpdateFilters()
	self:SetCategory(category or self:GetCategory())
	self:UpdateSubSets()
end

function InventoryFrame:UpdateSubSets(subCategory)
	self.bottomFilter:UpdateFilters()
	self:SetSubCategory(subCategory or self:GetSubCategory())
end

function InventoryFrame:HasSet(name)
	for i,setName in self:GetSets() do
		if setName == name then
			return true
		end
	end
	return false
end

function InventoryFrame:HasSubSet(name, parent)
	if self:HasSet(parent) then
		local excludeSets = self:GetExcludedSubsets(parent)
		if excludeSets then
			for _,childSet in pairs(excludeSets) do
				if childSet == name then
					return false
				end
			end
		end
		return true
	end
	return false
end

function InventoryFrame:GetSets()
	local profile = Combuctor:GetProfile(self:GetPlayer()) or Combuctor:GetProfile(UnitName('player'))
	return ipairs(profile[self.key].sets)
end

function InventoryFrame:GetExcludedSubsets(parent)
	local profile = Combuctor:GetProfile(self:GetPlayer()) or Combuctor:GetProfile(UnitName('player'))
	return profile[self.key].exclude[parent]
end


--Set
function InventoryFrame:SetCategory(name)
	if not(self:HasSet(name) and CombuctorSet:Get(name)) then
		name = self:GetDefaultCategory()
	end

	local set = name and CombuctorSet:Get(name)
	if self:SetFilter('rule', (set and set.rule) or nil) then
		self.category = name
		self.sideFilter:UpdateHighlight()
		self:UpdateSubSets()
	end
end

function InventoryFrame:GetCategory()
	return self.category or self:GetDefaultCategory()
end

function InventoryFrame:GetDefaultCategory()
	for _,set in CombuctorSet:GetParentSets() do
		if self:HasSet(set.name) then
			return set.name
		end
	end
end


--Subset
function InventoryFrame:SetSubCategory(name)
	local parent = self:GetCategory()
	if not(parent and self:HasSubSet(name, parent) and CombuctorSet:Get(name, parent)) then
		name = self:GetDefaultSubCategory()
	end

	local set = name and CombuctorSet:Get(name, parent)
	if self:SetFilter('subRule', (set and set.rule) or nil) then
		self.subCategory = name
		self.bottomFilter:UpdateHighlight()
	end
end

function InventoryFrame:GetSubCategory()
	return self.subCategory or self:GetDefaultSubCategory()
end

function InventoryFrame:GetDefaultSubCategory()
	local parent = self:GetCategory()
	if parent then
		for _,set in CombuctorSet:GetChildSets(parent) do
			if self:HasSubSet(set.name, parent) then
				return set.name
			end
		end
	end
end


--Quality
function InventoryFrame:SetQuality(quality)
	if self:SetFilter('quality', quality) then
		self.qualityFilter:UpdateHighlight()
	end
end

function InventoryFrame:GetQuality()
	return self:GetFilter('quality') or -1
end


--[[
	Sizing
--]]










function InventoryFrame:OnItemFrameSizeChanged()
	if(self.myitemcount and self.myitemcount >0) then
		self:UpdateInventoryFrameSize()		
	end
	local w, h = self:GetWidth(), self:GetHeight()
	self.sets.w = w
	self.sets.h = h
	self:SizeTLTextures(w, h)
	self:SizeBLTextures(w, h)
	self:SizeTRTextures(w, h)
	self:SizeBRTextures(w, h)

end

function InventoryFrame:SizeTLTextures(w, h)
	local t = _G[self:GetName() .. 'TLRight']
	t:SetWidth(200 + (w - BASE_WIDTH)/2)

	local t = _G[self:GetName() .. 'TLBottom']
	t:SetHeight(200 + (h - BASE_HEIGHT)/2)

	local t = _G[self:GetName() .. 'TLBottomRight']
	t:SetWidth(200 + (w - BASE_WIDTH)/2)
	t:SetHeight(200 + (h - BASE_HEIGHT)/2)
end

function InventoryFrame:SizeBLTextures(w, h)
	local t = _G[self:GetName() .. 'BLRight']
	t:SetWidth(200 + (w - BASE_WIDTH)/2)

	local t = _G[self:GetName() .. 'BLTop']
	t:SetHeight(200 + (h - BASE_HEIGHT)/2)

	local t = _G[self:GetName() .. 'BLTopRight']
	t:SetWidth(200 + (w - BASE_WIDTH)/2)
	t:SetHeight(200 + (h - BASE_HEIGHT)/2)
end

function InventoryFrame:SizeTRTextures(w, h)
	local t = _G[self:GetName() .. 'TRLeft']
	t:SetWidth(110 + (w - BASE_WIDTH)/2)

	local t = _G[self:GetName() .. 'TRBottom']
	t:SetHeight(200 + (h - BASE_HEIGHT)/2)

	local t = _G[self:GetName() .. 'TRBottomLeft']
	t:SetWidth(110 + (w - BASE_WIDTH)/2)
	t:SetHeight(200 + (h - BASE_HEIGHT)/2)
end

function InventoryFrame:SizeBRTextures(w, h)
	local t = _G[self:GetName() .. 'BRLeft']
	t:SetWidth(110 + (w - BASE_WIDTH)/2)

	local t = _G[self:GetName() .. 'BRTop']
	t:SetHeight(200 + (h - BASE_HEIGHT)/2)

	local t = _G[self:GetName() .. 'BRTopLeft']
	t:SetWidth(110 + (w - BASE_WIDTH)/2)
	t:SetHeight(200 + (h - BASE_HEIGHT)/2)
end

--updates where we can position the frame based on if the side and bottom filters are shown
function InventoryFrame:UpdateClampInsets()
	local l, r, t, b

	if self.bottomFilter:IsShown() then
		t = -15
		b = 35
	else
		t = -15
		b = 65
	end

	if self.sideFilter:IsShown() then
		if self.sideFilter:Reversed() then
			l = -20
			r = -35
		else
			l = 15
			r = 0
		end
	else
		l = 15
		r = -35
	end

	self:SetClampRectInsets(l, r, t, b)
end


--[[
	Positioning
--]]

function InventoryFrame:SavePosition(point, parent, relPoint, x, y)
	if point then
		if self.sets.position then
			self.sets.position[1] = point
			self.sets.position[2] = parent
			self.sets.position[3] = relPoint
			self.sets.position[4] = x
			self.sets.position[5] = y
		else
			self.sets.position = {point, parent, relPoint, x, y}
		end
		self:SetUserPlaced(true)
	else
		self.sets.position = nil
		self:SetUserPlaced(false)
	end
	self:UpdateManagedPosition()
end

function InventoryFrame:LoadPosition()
	if self.sets.position then
		self:SetPoint(unpack(self.sets.position))
		self:SetUserPlaced(true)
	else
		self:SetUserPlaced(nil)
	end
	self:UpdateManagedPosition()
end

function InventoryFrame:UpdateManagedPosition()
	if self.sets.position then
		if self:GetAttribute('UIPanelLayout-enabled') then
			if self:IsShown() then
				HideUIPanel(self)
				self:SetAttribute('UIPanelLayout-enabled', nil)
				ShowUIPanel(self)
			else
				self:SetAttribute('UIPanelLayout-enabled', nil)
			end
		end
	else
		if not self:GetAttribute('UIPanelLayout-enabled') then
			if self:IsShown() then
				HideUIPanel(self)
				self:SetAttribute('UIPanelLayout-enabled', true)
				ShowUIPanel(self)
			else
				self:SetAttribute('UIPanelLayout-enabled', true)
			end
		end
	end
end


--[[
	Display
--]]
local function OnMouseWheel(self, ...)
	local arg1 = ...
	if IsControlKeyDown() then
		local scale = self:GetScale() or 1
		if(arg1 == 1) then --scale up 
			scale = scale +.1
			if(scale > 1.5) then 
				scale = 1.5
			end
		else -- scale down
			scale = scale -.1
			if(scale < .5) then
				scale = .5
			end
		end
		self:SetScale(scale)
		if self.sets then
			self.sets.scale = scale
		end
		--Debug("scroll", arg1, scale, frameToMove:GetScale())
	end
end

 function InventoryFrame:SetFrameLocked(toggle)
	if toggle then
		self:SetMovable(false)
		self:SetScript("OnMouseWheel",function()end)
	else
		self:SetMovable(true)
		self:SetScript("OnMouseWheel",OnMouseWheel)
	end
end
function InventoryFrame:OnShow()
	PlaySound('igBackPackOpen')
	self.myitemcount=max(self.itemFrame.count, self.myitemcount or 0)
	
	FrameEvents:Register(self)
	self:UpdateSets(self:GetDefaultCategory())
	self:OnFrameShow()
	self.initwidth=self:GetWidth()
	self:SetFrameLocked(self.sets.isLocked)
end

function InventoryFrame:OnHide()
	_G[self:GetName().."Search"]:SetText("")
	self:SetFilter('name', nil, true)
	PlaySound('igBackPackClose')
	FrameEvents:Unregister(self)

	--it may look stupid, but yes
	if self:IsBank() and Combuctor:GetModule('InventoryData'):AtBank() then
		CloseBankFrame()
	end

	--return to showing the current player on close
	self:SetPlayer(UnitName('player'))
end

function InventoryFrame:ToggleFrame(auto)
	if self:IsShown() then
		self:HideFrame(auto)
	else
		self:ShowFrame(auto)
	end
end

function InventoryFrame:ShowFrame(auto)
	if not self:IsShown() then
		ShowUIPanel(self)
		self.autoShown = auto or nil
	end
end

function InventoryFrame:HideFrame(auto)
	if self:IsShown() then
		if not auto or self.autoShown then
			HideUIPanel(self)
			self.autoShown = nil
		end
	end
end

--[[
	Side Filter Positioning
--]]

function InventoryFrame:SetLeftSideFilter(enable)
	self.sets.leftSideFilter = enable and true or nil
	self.sideFilter:SetReversed(enable)
end

function InventoryFrame:IsSideFilterOnLeft()
	return self.sets.leftSideFilter
end


--[[
	Accessors
--]]

function InventoryFrame:IsBank()
	return self.isBank
end


--[[
	Terry@bf: add frame resizing functions

]]
local function getVal(minVal,maxVal,val)
	return min(max(val,minVal),maxVal)
end

local function calculateItemFrameSize(currentWidth,itemCount,minCol,minRow,maxCol,maxRow)
	local cellWidth = 38	
	if currentWidth then
		local itemPerCol = getVal(minCol,maxCol,floor(ceil(currentWidth)/cellWidth))
		local itemRow = max(ceil(itemCount/itemPerCol),minRow)
		if itemRow >maxRow then
			itemPerCol = ceil(itemCount/itemRow)
		end
		return cellWidth*itemPerCol,cellWidth*itemRow
	else
		local itemPerCol=max(ceil(sqrt(itemCount)),minCol)
		local itemRow = max(ceil(itemCount/itemPerCol),minRow)
		return cellWidth*itemPerCol,cellWidth*itemRow
	end
end

function InventoryFrame:OnEvent()
	if event=="BANKFRAME_OPENED" then
		if( self:IsBank() and not self.sets.bankOpened ) then
			self.sets.itemframew=nil
			self:OnFrameShow()
			self.sets.bankOpened=true
		end
	end
end
		
function InventoryFrame:SetItemFrameSize(width)
	local count = self.myitemcount
	local minCol,minRow,maxCol,maxRow
	if self:IsBank() then
		minCol,minRow,maxCol,maxRow= 8,8,25,25
	else
		minCol,minRow,maxCol,maxRow= 8,7,20,20
	end
	local w,h=calculateItemFrameSize(width or self.sets.itemframew,count,minCol,minRow,maxCol,maxRow)
	self.itemFrame:SetHeight(h)
	self.itemFrame:SetWidth(w)
	self.itemFrame:RequestLayout()
	self.sets.itemframew=w
	self.sets.itemframeh=h

end


function InventoryFrame:OnFrameShow()
	local getBackPackSize=function()
		local count =0
		for i=0,4,1 do
			count=count+GetContainerNumSlots(i)
		end
		return count
	end

	if self.isBank then
		self.myitemcount=max(self.itemFrame.count, self.myitemcount or 0,28)
	else
		self.myitemcount=getBackPackSize()
	end
	self:LoadPosition()
	self:SetItemFrameSize()
	self:OnItemFrameSizeChanged()
	self:SetScale(self.sets.scale or 1)

end

function InventoryFrame:UpdateInventoryFrameSize()
	local prevIW, prevIH = self.itemFrame:GetWidth(), self.itemFrame:GetHeight()
	local newW = prevIW -ITEM_FRAME_WIDTH_OFFSET
	if next(self.bagButtons) then
		newW = newW + 36
	end
	local newH = prevIH - ITEM_FRAME_HEIGHT_OFFSET
	self:SetWidth(newW)
	self:SetHeight(newH)	
end

function InventoryFrame:OnItemFrameSizeChanged()
	self:UpdateInventoryFrameSize()		
	local w, h = self:GetWidth(), self:GetHeight()
	self.sets.w = w
	self.sets.h = h
	self:SizeTLTextures(w, h)
	self:SizeBLTextures(w, h)
	self:SizeTRTextures(w, h)
	self:SizeBRTextures(w, h)

end

function InventoryFrame:OnFrameUpdate()
	local x=GetCursorPosition()
	self:SetItemFrameSize(self.initwidth+(x-self.initcx))
	self:OnItemFrameSizeChanged()
end



function InventoryFrame:ToggleLock()
	self.sets.isLocked=not self.sets.isLocked
	self:SetFrameLocked(self.sets.isLocked)
end




