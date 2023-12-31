BFMark = LibStub('AceAddon-3.0'):NewAddon('BigFootMark', 'AceEvent-3.0', 'AceConsole-3.0') MAP_ADJACENT_DISTANCE = 20 local BigFootMark_0ff1475236b21cc42bc579ef6b84a020 MAP_MARK_TEXTURE = { [MAP_MARK_PROF_MAGE] = "Interface\\AddOns\\BigFootMark\\icon\\26", [MAP_MARK_PROF_PRIEST] = "Interface\\AddOns\\BigFootMark\\icon\\31", [MAP_MARK_PROF_WARLOCK] = "Interface\\AddOns\\BigFootMark\\icon\\32", [MAP_MARK_PROF_ROGUE] = "Interface\\AddOns\\BigFootMark\\icon\\27", [MAP_MARK_PROF_DRUID] = "Interface\\AddOns\\BigFootMark\\icon\\28", [MAP_MARK_PROF_HUNTER] = "Interface\\AddOns\\BigFootMark\\icon\\29", [MAP_MARK_PROF_SHAMAN] = "Interface\\AddOns\\BigFootMark\\icon\\30", [MAP_MARK_PROF_WARRIOR] = "Interface\\AddOns\\BigFootMark\\icon\\25", [MAP_MARK_PROF_PALADIN] = "Interface\\AddOns\\BigFootMark\\icon\\33", [MAP_MARK_PROF_DEATHKNIGHT] = "Interface\\AddOns\\BigFootMark\\icon\\34", [MAP_MARK_SKILL_ALCHE] = "Interface\\AddOns\\BigFootMark\\icon\\2", [MAP_MARK_PROF_BLACKSMITH] = "Interface\\AddOns\\BigFootMark\\icon\\17", [MAP_MARK_PROF_ENCHANTING] = "Interface\\AddOns\\BigFootMark\\icon\\19", [MAP_MARK_PROF_ENGINEERING] = "Interface\\AddOns\\BigFootMark\\icon\\18", [MAP_MARK_PROF_HERBALISM] = "Interface\\AddOns\\BigFootMark\\icon\\21", [MAP_MARK_PROF_INSCRIPTION] = "Interface\\AddOns\\BigFootMark\\icon\\9", [MAP_MARK_PROF_JEWEL] = "Interface\\AddOns\\BigFootMark\\icon\\12", [MAP_MARK_PROF_LEATHERWORKING]= "Interface\\AddOns\\BigFootMark\\icon\\22", [MAP_MARK_PROF_MINING] = "Interface\\AddOns\\BigFootMark\\icon\\23", [MAP_MARK_PROF_SKINNING] = "Interface\\AddOns\\BigFootMark\\icon\\13", [MAP_MARK_PROF_TAILORING] = "Interface\\AddOns\\BigFootMark\\icon\\24", [MAP_MARK_PROF_COOKING] = "Interface\\AddOns\\BigFootMark\\icon\\11", [MAP_MARK_PROF_FIRSTAID] = "Interface\\AddOns\\BigFootMark\\icon\\1", [MAP_MARK_PROF_FISHING] = "Interface\\AddOns\\BigFootMark\\icon\\20", [MAP_MARK_PROF_RIDING] = "Interface\\AddOns\\BigFootMark\\icon\\16", [MAP_MARK_WEAPON] = "Interface\\AddOns\\BigFootMark\\icon\\5", [MAP_MARK_INN] = "Interface\\AddOns\\BigFootMark\\icon\\35", [MAP_MARK_GLADIUS] = "Interface\\AddOns\\BigFootMark\\icon\\6", [MAP_MARK_FLY] = "Interface\\AddOns\\BigFootMark\\icon\\3", [MAP_MARK_PORTAL] = "Interface\\AddOns\\BigFootMark\\icon\\15", [MAP_MARK_AUCTION] = "Interface\\AddOns\\BigFootMark\\icon\\7", [MAP_MARK_BANK] = "Interface\\AddOns\\BigFootMark\\icon\\14", [MAP_MARK_BARBER] = "Interface\\AddOns\\BigFootMark\\icon\\8", [MAP_MARK_MATERIAL] = "Interface\\AddOns\\BigFootMark\\icon\\10", [MAP_MARK_STABLE] = "Interface\\AddOns\\BigFootMark\\icon\\4", } MAP_MARK_MAPPING = { [BFM_ALCHE] = MAP_MARK_SKILL_ALCHE, [BFM_BLACKSMITH] = MAP_MARK_PROF_BLACKSMITH, [BFM_ENCHANTING] = MAP_MARK_PROF_ENCHANTING, [BFM_ENGINEERING] = MAP_MARK_PROF_ENGINEERING, [BFM_HERBALISM] = MAP_MARK_PROF_HERBALISM, [BFM_INSCRIPTION] = MAP_MARK_PROF_INSCRIPTION, [BFM_JEWEL] = MAP_MARK_PROF_JEWEL, [BFM_LEATHERWORKING] = MAP_MARK_PROF_LEATHERWORKING, [BFM_MINING] = MAP_MARK_PROF_MINING, [BFM_SKINNING] = MAP_MARK_PROF_SKINNING, [BFM_TAILORING] = MAP_MARK_PROF_TAILORING, } MAP_MARK_MAPPING_TABLE = { MAP_MARK_PROF_MAGE, MAP_MARK_PROF_PRIEST, MAP_MARK_PROF_WARLOCK, MAP_MARK_PROF_ROGUE, MAP_MARK_PROF_DRUID, MAP_MARK_PROF_HUNTER, MAP_MARK_PROF_SHAMAN, MAP_MARK_PROF_WARRIOR, MAP_MARK_PROF_PALADIN, MAP_MARK_PROF_DEATHKNIGHT, MAP_MARK_SKILL_ALCHE, MAP_MARK_PROF_BLACKSMITH, MAP_MARK_PROF_ENCHANTING, MAP_MARK_PROF_ENGINEERING, MAP_MARK_PROF_HERBALISM, MAP_MARK_PROF_INSCRIPTION, MAP_MARK_PROF_JEWEL, MAP_MARK_PROF_LEATHERWORKING, MAP_MARK_PROF_MINING, MAP_MARK_PROF_SKINNING, MAP_MARK_PROF_TAILORING, MAP_MARK_PROF_COOKING, MAP_MARK_PROF_FIRSTAID, MAP_MARK_PROF_FISHING, MAP_MARK_PROF_RIDING, MAP_MARK_WEAPON, MAP_MARK_INN, MAP_MARK_GLADIUS, MAP_MARK_FLY, MAP_MARK_PORTAL, MAP_MARK_AUCTION, MAP_MARK_BANK, MAP_MARK_BARBER, MAP_MARK_MATERIAL, MAP_MARK_STABLE, } BigFootMarkMappingDB=BigFootMarkMappingDB or { [MAP_MARK_FLY1] = MAP_MARK_FLY, [MAP_MARK_FLY2] = MAP_MARK_FLY, [MAP_MARK_FLY3] = MAP_MARK_FLY, [MAP_MARK_FLY4] = MAP_MARK_FLY, [MAP_MARK_FLY5] = MAP_MARK_FLY, } local function GetMappedType(_type) if BigFootMarkMappingDB[_type] then return BigFootMarkMappingDB[_type] end for _,val in pairs(MAP_MARK_MAPPING_TABLE) do if string.find(_type,val) then BigFootMarkMappingDB[_type] =val return val end end return "" end local function InitConfig() BigFootMarkDB = {} BigFootMarkDB.showMarks = true _,localized = UnitClass("player") if _G["MAP_MARK_PROF_"..localized] then BigFootMarkDB[_G["MAP_MARK_PROF_"..localized]] = true end for _i = 1, GetNumSkillLines() do skillName = GetSkillLineInfo(_i) local mapping = MAP_MARK_MAPPING[skillName] if mapping then BigFootMarkDB[mapping] = true end end BigFootMarkDB[MAP_MARK_INN] = true BigFootMarkDB[MAP_MARK_FLY] = true BigFootMarkDB[MAP_MARK_AUCTION] = true BigFootMarkDB[MAP_MARK_BANK] = true BigFootMarkDB[MAP_MARK_MATERIAL] = true end function BFM_ToggleEnable(BigFootMark_7739b813d90aed43ab9d0eb84ec1c1ae) if ( BigFootMark_7739b813d90aed43ab9d0eb84ec1c1ae == 1 ) then if (not BigFootMark_0ff1475236b21cc42bc579ef6b84a020) then WorldMapFrame:HookScript("OnUpdate", BigFootMark_359af385f8090e4c5839f533807d0e06); BigFootMark_0ff1475236b21cc42bc579ef6b84a020 = true; if (WorldMapFrame:HasScript("OnShow")) then WorldMapFrame:HookScript("OnShow", BigFootMark_ae42389ca37ac306b6bc3f5dfc08ff0d); else WorldMapFrame:SetScript("OnShow", BigFootMark_ae42389ca37ac306b6bc3f5dfc08ff0d); end end BigFootMark_3657b630f9b53060aa76a1ee4510bd5f = 1; else BigFootMark_3657b630f9b53060aa76a1ee4510bd5f = nil; end end local MapMarkDDTable = { [MAP_MARK_PROF] = { [MAP_MARK_PROF_MAGE] = {func = true}, [MAP_MARK_PROF_PRIEST] = {func = true}, [MAP_MARK_PROF_WARLOCK] = {func = true}, [MAP_MARK_PROF_ROGUE] = {func = true}, [MAP_MARK_PROF_DRUID] = {func = true}, [MAP_MARK_PROF_HUNTER] = {func = true}, [MAP_MARK_PROF_SHAMAN] = {func = true}, [MAP_MARK_PROF_WARRIOR] = {func = true}, [MAP_MARK_PROF_PALADIN] = {func = true}, [MAP_MARK_PROF_DEATHKNIGHT] = {func = true}, }, [MAP_MARK_SKILL] = { [MAP_MARK_SKILL_ALCHE] = {func = true}, [MAP_MARK_PROF_BLACKSMITH] = {func = true}, [MAP_MARK_PROF_ENCHANTING] = {func = true}, [MAP_MARK_PROF_ENGINEERING] = {func = true}, [MAP_MARK_PROF_HERBALISM] = {func = true}, [MAP_MARK_PROF_INSCRIPTION] = {func = true}, [MAP_MARK_PROF_JEWEL] = {func = trued}, [MAP_MARK_PROF_LEATHERWORKING] = {func = true}, [MAP_MARK_PROF_MINING] = {func = true}, [MAP_MARK_PROF_SKINNING] = {func = true}, [MAP_MARK_PROF_TAILORING] = {func = true}, [MAP_MARK_PROF_COOKING] = {func = true}, [MAP_MARK_PROF_FIRSTAID] = {func = true}, [MAP_MARK_PROF_FISHING] = {func = true}, }, [MAP_MARK_WEAPON] = { func = true }, [MAP_MARK_INN] = { func = true }, [MAP_MARK_GLADIUS] = { func = true }, [MAP_MARK_FLY] = { func = true }, [MAP_MARK_PORTAL] = { func = true }, [MAP_MARK_AUCTION] = { func = true }, [MAP_MARK_BANK] = { func = true }, [MAP_MARK_BARBER] = { func = true }, [MAP_MARK_MATERIAL] = { func = true }, [MAP_MARK_STABLE] = { func = true }, } function MapMarkDDInit(self,level) level = level or 1; if (level == 1) then for key, subarray in pairs(MapMarkDDTable) do local info = UIDropDownMenu_CreateInfo(); info.text = key; if subarray.func then info.hasArrow = false; info.func = function() BigFootMarkDB[key] = not BigFootMarkDB[key] end info.checked = BigFootMarkDB[key] else info.hasArrow = true; info.value = { ["Level1_Key"] = key; }; end UIDropDownMenu_AddButton(info, level); end end if (level == 2) then local Level1_Key = UIDROPDOWNMENU_MENU_VALUE["Level1_Key"]; subarray = MapMarkDDTable[Level1_Key]; for key, subsubarray in pairs(subarray) do local info = UIDropDownMenu_CreateInfo(); info.hasArrow = false; info.text = key info.func = function() BigFootMarkDB[key] = not BigFootMarkDB[key] end info.checked = BigFootMarkDB[key] UIDropDownMenu_AddButton(info, level); end end end function BigFootMark_ae42389ca37ac306b6bc3f5dfc08ff0d() if (not BigFootMark_3657b630f9b53060aa76a1ee4510bd5f) then MapPlusDDList:Hide() MapMarkCheckButton:Hide() return; end if not BigFootMarkDB then InitConfig() end UIDropDownMenu_Initialize(MapPlusDDList,MapMarkDDInit) UIDropDownMenu_SetText(MapPlusDDList,MAPMARK_TITLE) MapPlusDDList:Show() MapMarkCheckButton:Show() end local function isSelected(type) if BigFootMarkDB[GetMappedType(type)] then return true end return false end local function coord_transform(width,height,x,y) return x*width/100,-y*height/100 end local function showNodes(_type,name,...) local function showNode(name,_type,x,y) local texture = MAP_MARK_TEXTURE[GetMappedType(_type) ] local button = _G["MapMark"..node_index] if not button then button = CreateFrame("Button","MapMark"..node_index,WorldMapDetailFrame,"MapMarkTemplate") end button:SetPoint("CENTER",WorldMapDetailFrame,"TOPLEFT",coord_transform(WorldMapDetailFrame:GetWidth(), WorldMapDetailFrame:GetHeight(),x,y)) _G[button:GetName().."Icon"]:SetTexture(texture); button.text2 = name button.text = _type node_index = node_index + 1 button:Show() end local _coord = ... showNode(name,_type,_coord[1],_coord[2]) end local function hideNodes() local _i = 1 while _G["MapMark".._i] do _G["MapMark".._i]:Hide() _i = _i + 1 end end local function getCurrentMapName() local mapId = GetCurrentMapZone() if mapId >0 then return select(mapId,GetMapZones(GetCurrentMapContinent())) end end function BigFootMark_359af385f8090e4c5839f533807d0e06(self) hideNodes() if not BigFootMark_3657b630f9b53060aa76a1ee4510bd5f then return end if MapMarkHide then return end local mapName = getCurrentMapName() if not MapPlusNodeData then return end node_index = 1 if mapName and MapPlusNodeData[mapName] then local nodes = MapPlusNodeData[mapName] for _,_node in pairs(nodes) do if isSelected(_node[1]) then showNodes(_node[1],_node[2],select(3,unpack(_node))) end end end end function IsButtonsAdjacent(button1, button2) local BigFootMark_bb09ff53f73097f772bbad85ab4789a3, BigFootMark_8564354d3dfe092927e7594edd6b33ae = button1:GetCenter(); local BigFootMark_05a093d743a51039be6b1ba936768e35, BigFootMark_a42ee07c25fc8757c49710ea97cea40d = button2:GetCenter(); return ((BigFootMark_bb09ff53f73097f772bbad85ab4789a3-BigFootMark_05a093d743a51039be6b1ba936768e35)^2 + (BigFootMark_8564354d3dfe092927e7594edd6b33ae-BigFootMark_a42ee07c25fc8757c49710ea97cea40d)^2 <200) end function MapMarkPoint_OnEnter(self) local BigFootMark_b254e387cf58e982ba24fcb3e8a63995, BigFootMark_a0f453fd098c0b0fda780f69cda6ffbf = self:GetCenter(); local BigFootMark_bef0afa8f0e35507e468dab3fd56505f = self:GetParent():GetCenter(); if ( BigFootMark_b254e387cf58e982ba24fcb3e8a63995 > BigFootMark_bef0afa8f0e35507e468dab3fd56505f ) then BFMTooltip:SetOwner(self, "ANCHOR_LEFT"); else BFMTooltip:SetOwner(self, "ANCHOR_RIGHT"); end BFMTooltip:AddLine(self.text) local font = _G["BFMTooltipTextLeft"..BFMTooltip:NumLines()]:GetFontObject() BFMTooltip:AddLine(self.text2) _G["BFMTooltipTextLeft"..BFMTooltip:NumLines()]:SetTextColor(TOOLTIP_DEFAULT_COLOR.r, TOOLTIP_DEFAULT_COLOR.g, TOOLTIP_DEFAULT_COLOR.b) _i = 1 while _G["MapMark".._i] do local button = _G["MapMark".._i] if button:IsShown() and button ~= self and IsButtonsAdjacent(button,self) then BFMTooltip:AddLine(" ") BFMTooltip:AddLine(button.text) _G["BFMTooltipTextLeft"..BFMTooltip:NumLines()]:SetFontObject(font) BFMTooltip:AddLine(button.text2) _G["BFMTooltipTextLeft"..BFMTooltip:NumLines()]:SetTextColor(TOOLTIP_DEFAULT_COLOR.r, TOOLTIP_DEFAULT_COLOR.g, TOOLTIP_DEFAULT_COLOR.b) end _i = _i + 1 end BFMTooltip:Show(); end function MapMarkPoint_OnLeave(self) BFMTooltip:Hide(); end function MapMarkToggleEnable(tog) if tog then MapMarkHide = false else MapMarkHide = true end end function Distance(coord1,coord2) return (coord1[1]-coord2[1])^2 + (coord1[2]-coord2[2])^2 end function IsAdjacent(dbTable, entry) if not dbTable or not dbTable[GetMappedType(entry[1])] then return false end for _,_coord in pairs(dbTable[GetMappedType(entry[1])]) do if Distance(_coord,entry[3]) < MAP_ADJACENT_DISTANCE then return true end end return false end function ReduceMap(_table) local tempDB = {} local outPut ={} for _,_entry in pairs(_table) do tempDB[GetMappedType(_entry[1])] = tempDB[GetMappedType(_entry[1])] or {} if not IsAdjacent(tempDB,_entry) then tinsert(tempDB[GetMappedType(_entry[1])],_entry[3]) tinsert(outPut,_entry) end end return outPut end function ReduceData() for _name,_table in pairs(MapPlusNodeData) do MapPlusNodeData[_name]= ReduceMap(_table) end end function BFMark:OnInitialize() ReduceData() end function BFMark:OnEnable() BFM_ToggleEnable(1) end function BFMark:OnDisable() BFM_ToggleEnable(0) end 
