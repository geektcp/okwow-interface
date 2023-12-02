--[[ BigFoot.lua 这里设置的主要是关于变量存储的数据 同时，一些简单的接口开关也设置在这里 同时一个主要的功能是 定义设置界面的接口 包括： BigFoot_SetModVariable BigFoot_GetModVariable BigFoot_ShowKeyBindingFrame 版本：1.15 更新时间：2004年10月24日 更新作者：Andy Xiao ]] if (GetLocale() == "zhCN") then
    BF_RELOADUI_CONFIRM = "该操作将会重新载入所有的插件，你确信要这么做吗？";
    BF_CENTER_TOOLTIP = "将信息提示放置在屏幕顶上";
    BF_URL_TEXT = "|cffffffff该功能将开启游戏外的网页，会导致当前任务切换到游戏外的IE浏览器。\n\n如果你想继续，请按\"|cffffd100Ctrl+C|r\"。\n|cff00ffff(该功能仅在客户端开启时才有效)|r|r";
    BF_HEADER = "KK魔兽设置";
    BF_NAME = "KK魔兽插件";
    TAB_OTHERS = "其它设置";
    TAB_ACTIONBAR = "动作条";
    TAB_GENERAL = "一般设置";
    ERR_FRIEND_ONLINE_SS = "|Hplayer:%s|h[%s]|h上线了。";
    BF_MINIBUTTON_TIP_TITLE = "KK魔兽设置";
    BF_MINIBUTTON_TIP_TEXT = "◇左键单击按钮打开设置。\n◇右键单击按钮查看额外信息功能。\n◇按住按钮进行拖动，可以沿小地图外\n　沿改变按钮的位置。";
    BF_CLASS_WARRIOR = "战士";
    BF_CLASS_MAGE = "法师";
    BF_CLASS_SHAMAN = "萨满祭司";
    BF_CLASS_PALADIN = "圣骑士";
    BF_CLASS_ROGUE = "潜行者";
    BF_CLASS_HUNTER = "猎人";
    BF_CLASS_WARLOCK = "术士";
    BF_CLASS_PRIEST = "牧师";
    BF_CLASS_DRUID = "德鲁伊";
    BF_CLASS_DEATHKNIGHT = "死亡骑士";
    BF_VERSION_PATTERN = "|cff00e0e0当前KK魔兽插件的版本为：<%s>。|r";
    BF_CHANGELOG_TEXT = "更新日志";
    BF_BASIC_INFO = "基本信息";
    BF_EXTRA_FUNCTION = "额外功能";
    BF_VERSION_INFO = "版本信息";
    BF_SHUANGCAI = "双采";
    BF_FINDING_MINING = "寻找矿物";
    BF_FINDING_HERBS = "寻找草药";
elseif (GetLocale() == "zhTW") then
    BF_RELOADUI_CONFIRM = "該操作將會重新載入所有的插件，你確信要這麼做嗎？";
    BF_CENTER_TOOLTIP = "將訊息提示放置在螢幕頂端";
    BF_URL_TEXT = "|cffffffff該功能將開啟遊戲外的網頁，會導致當前任務切換到遊戲外的IE流覽器。\n\n如果你想繼續，請按\"|cffffd100Ctrl+C|r\"。\n|cff00ffff(該功能僅在用戶端開啟時才有效)|r|r";
    BF_HEADER = "大腳設置";
    BF_NAME = "大腳插件";
    TAB_OTHERS = "其它設置";
    TAB_ACTIONBAR = "快捷列";
    TAB_GENERAL = "一般設置";
    BF_MINIBUTTON_TIP_TITLE = "大腳設置";
    BF_MINIBUTTON_TIP_TEXT = "◇左鍵單擊按鈕打開設置。\n◇右鍵單擊按鈕查看額外資訊功能。\n◇按住按鈕進行拖動，可以沿小地圖外\n　沿改變按鈕的位置。";
    BF_CLASS_WARRIOR = "戰士";
    BF_CLASS_MAGE = "法師";
    BF_CLASS_SHAMAN = "薩滿";
    BF_CLASS_PALADIN = "聖騎士";
    BF_CLASS_ROGUE = "盜賊";
    BF_CLASS_HUNTER = "獵人";
    BF_CLASS_WARLOCK = "術士";
    BF_CLASS_PRIEST = "牧師";
    BF_CLASS_DRUID = "德魯伊";
    BF_CLASS_DEATHKNIGHT = "死亡騎士";
    BF_VERSION_PATTERN = "|cff00e0e0當前大腳插件的版本為：<%s>。|r";
    BF_CHANGELOG_TEXT = "更新日誌";
    BF_BASIC_INFO = "基本資訊";
    BF_VERSION_INFO = "版本資訊";
    BF_EXTRA_FUNCTION = "額外功能";
    BF_SHUANGCAI = "雙采";
    BF_FINDING_MINING = "尋找礦物";
    BF_FINDING_HERBS = "尋找草藥";
else
    BF_RELOADUI_CONFIRM = "This will reload all your AddOns, do you continue?";
    BF_CENTER_TOOLTIP = "Rearrange Tooltip";
    BF_URL_TEXT = "|cffffffThe function will open web page outside, it will change current task to Internet Explorer.\n\nIf you want to continue, press\"|cffffd100Ctrl+C|r\".\n|cff00ffff(Available when BigFoot Client is runing)|r|r";
    BF_HEADER = "BigFoot Menu";
    BF_NAME = "BigFoot";
    TAB_OTHERS = "Others";
    TAB_ACTIONBAR = "Action Bar";
    TAB_GENERAL = "General";
    BF_MINIBUTTON_TIP_TITLE = "BigFoot Settings";
    BF_MINIBUTTON_TIP_TEXT = "Left click to open settings window.\nRight click to view extra functions and information.\nDrag the button to change the position.";
    BF_BUY_CONFIRM = "You will buy a new slot, are you sure?";
    BF_CLASS_WARRIOR = "Warrior";
    BF_CLASS_MAGE = "Mage";
    BF_CLASS_SHAMAN = "Shaman";
    BF_CLASS_PALADIN = "Paladin";
    BF_CLASS_ROGUE = "Rogue";
    BF_CLASS_HUNTER = "Hunter";
    BF_CLASS_WARLOCK = "Warlock";
    BF_CLASS_PRIEST = "Priest";
    BF_CLASS_DRUID = "Druid";
    BF_CLASS_DEATHKNIGHT = "Death Knight";
    BF_VERSION_PATTERN = "|cff00e0e0The current version is <%s>.|r";
    BF_CHANGELOG_TEXT = "ChangeLog";
    BF_BASIC_INFO = "Basic Information";
    BF_VERSION_INFO = "Version Information";
    BF_EXTRA_FUNCTION = "Extra Function";
    BF_SHUANGCAI = "Dual Finding";
    BF_FINDING_MINING = "Find Minerals";
    BF_FINDING_HERBS = "Find Herbs";
end
BigFoot_5d3b9a2ca6fc05177c9c7949d0c9c6bf = 1;
BigFoot_LinkStatus = nil;
SLASH_BIGFOOT1, SLASH_BIGFOOT2 = '/bigfoot', '/bf'
local BigFoot_YellWords = nil
local BigFoot_YellInterval = 60
local BigFoot_Channel = 2
BigFoot_54712cfd3a2c182c0e5e07016c830ccb = {};
function MyIsShiftKeyDown()
    return not OldIsShiftKeyDown();
end
BigFoot_UiConfig = {};
BigFoot_Config = {};
BigFoot_Error = {};
BF_Frames_Config = {};
BigFoot_Character = {};
local BIGFOOT_INTERFACE_VERION
BigFoot_d3806086ba4f940b19e37717b6597f67 = nil;
BigFoot_1f0d236c734e8dd748891fc599685c78 = nil;
BigFoot_4d59c08ec7296e19dbad0febf86782fe = nil;
BigFoot_957ce86c4aba56a885cb1d30b235db38 = nil;
local BigFoot_43104c47cab724af636c611abe21ff77 = -1;
StaticPopupDialogs["RELOADUI_CONFIRM"] = { text = BF_RELOADUI_CONFIRM, button1 = TEXT(YES), button2 = TEXT(NO), OnAccept = function()
    ReloadUI();
end, OnCancel = function(data, reason)
    if (reason == "clicked" and type(StaticPopupDialogs["RELOADUI_CONFIRM"].onCancelled) == "function") then
        StaticPopupDialogs["RELOADUI_CONFIRM"].onCancelled();
    end
end, showAlert = 1, timeout = 0, hideOnEscape = 1 };
local function BigFoot_6da81d9da996987c3a7a5a685a2c52ed()
    if BigFoot_Channel then
        SendChatMessage(BigFoot_YellWords, "CHANNEL", nil, BigFoot_Channel)
    else
        SendChatMessage(BigFoot_YellWords, "CHANNEL", nil, 2)
    end
end
function BigFoot_OnInit(self)
    local BigFoot_9b3039b3425f7448d0cb3db285647465 = false;
    local BigFoot_fecde02b80752ac152b97de84411a4cf = GetCVar("locale");
    if (string.len(BigFoot_fecde02b80752ac152b97de84411a4cf) == 4) then
        BigFoot_9b3039b3425f7448d0cb3db285647465 = true;
        SetCVar("locale", BigFoot_fecde02b80752ac152b97de84411a4cf .. " ");
    end
    RegisterCVar("BFClient");
    RegisterCVar("BFClient2");
    if (BigFoot_9b3039b3425f7448d0cb3db285647465) then
        if (GetCVar("BFClient") == "1") then
            BFClient_Running = true;
            SetCVar("BFClient2", "1");
        else
            BFClient_Running = false;
            SetCVar("BFClient2", "0");
        end
    else
        if (GetCVar("BFClient2") == "1") then
            BFClient_Running = true;
        else
            BFClient_Running = false;
        end
    end
    SetCVar("BFClient", "0");
    self:RegisterEvent("PLAYER_LOGIN");
    GameMenuFrame:SetWidth(165);
    GameMenuFrame:SetHeight(255);
    if GameMenuButtonHelp then
        --GameMenuButtonHelp:SetPoint("TOP", "BigFootMenuButtonOptions", "BOTTOM", 0, -1);
        GameMenuButtonOptions:SetPoint("TOP", "GameMenuButtonHelp", "BOTTOM", 0, -1);
    else
        --GameMenuButtonOptions:SetPoint("TOP", "BigFootMenuButtonOptions", "BOTTOM", 0, -1);
    end
    SlashCmdList["BIGFOOT"] = function()
        ShowUIPanel(ModManagementFrame);
    end
    SlashCmdList["STOPMOVING"] = BigFoot_6b2b31b051710342eee9ef69c10b3393;
    SlashCmdList["BFAUTOYELL"] = function(...)
        local str = ...
        local command, arg = strsplit(" ", str)
        if command == "interval" then
            BigFoot_YellInterval = max(tonumber(arg), 60)
            print("自动喊话间隔已设定为: " .. BigFoot_YellInterval .. "秒")
        elseif command == "content" then
            BigFoot_YellWords = arg
            print("自动喊话内容已设定为: " .. BigFoot_YellWords)
            BigFoot_6da81d9da996987c3a7a5a685a2c52ed()
        elseif command == "channel" then
            BigFoot_Channel = tonumber(arg)
            print("自动喊话频道已设定为: " .. BigFoot_Channel .. "频道")
        elseif command == "stop" then
            BigFoot_YellWords = nil
            print("自动喊话已停止，请重新设定内容！")
        elseif command == "help" then
            print("请加入参数来制定喊话")
            print("interval 设定间隔")
            print("content 设定内容并开始喊话")
            print("channel 设定频道")
            print("stop 停止喊话")
        end
    end
    SLASH_STOPMOVING1 = "/stopmoving";
    SLASH_STOPMOVING2 = "/stop";
    SLASH_BFAUTOYELL1 = "/bfautoyell";
    BigFoot_fff18c914a5b3a8d509f2dff0f3fc382();
end
function GetInterfaceInfo()
    return BIGFOOT_INTERFACE_VERION or select(4, GetBuildInfo())
end
local factionTable = { ["Alliance"] = 0, ["Horde"] = 1, }
local function BigFoot_38050ee3c376a78c7553c2ca1f2b8f70()
    if GetLocale() ~= 'zhCN' then
        return
    end
    BigFoot_Character["Region"] = "cn" .. (BFU_GetRegion() or 0)
    BigFoot_Character["Realm"] = BFU_GetServerName()
    BigFoot_Character["Name"] = BFU_GetName()
    BigFoot_Character["Gender"] = BFU_GetGender() - 1
    BigFoot_Character["Faction"] = factionTable[BFU_GetFaction()]
    BigFoot_Character["Class"] = BFU_GetClass()
    BigFoot_Character["Race"] = BFU_GetRace()
    BigFoot_Character["Level"] = BFU_GetLvl()
    BigFoot_Character["VCode"] = BMath:MD5(BigFoot_Character["Region"] .. BigFoot_Character["Realm"] .. BigFoot_Character["Name"] .. "bf-client")
end
function BigFoot_OnEvent(self, BigFoot_d0708241b607c9a9dd1953c812fadfb7, ...)
    if (BigFoot_d0708241b607c9a9dd1953c812fadfb7 == "PLAYER_LOGIN") then
        BIGFOOT_INTERFACE_VERION = select(4, GetBuildInfo())
        BigFoot_5cce98c7af8139064e065c4da9901881();
        BigFoot_DelayCall(BigFoot_38050ee3c376a78c7553c2ca1f2b8f70, 3)
    end
end
local function BigFoot_3141dec0488bfa184743435a5c7a4cda(frame, arg1)
    if not BigFoot_YellWords then
        return
    end
    frame.time = frame.time or 0
    frame.time = frame.time + arg1
    if frame.time >= BigFoot_YellInterval then
        BigFoot_6da81d9da996987c3a7a5a685a2c52ed()
        frame.time = frame.time % BigFoot_YellInterval
    end
end
BLibrary("BUtils"):AddUpdateCallback(BigFoot_3141dec0488bfa184743435a5c7a4cda)
function BigFoot_a7b561b7f447a75e6e1b9a0478c24d60(__mod, BigFoot_be741bd2030ad8ad70d14fb34b673ab8)
    for BigFoot_e914904fab9d05d3f54d52bfc31a0f3f, BigFoot_7e7860987b220bb966092ef46f8a8f44 in pairs(BigFoot_UiConfig) do
        if (__mod == BigFoot_7e7860987b220bb966092ef46f8a8f44.mod and BigFoot_be741bd2030ad8ad70d14fb34b673ab8 == BigFoot_7e7860987b220bb966092ef46f8a8f44.variable) then
            return BigFoot_7e7860987b220bb966092ef46f8a8f44.default;
        end
    end
end
function BigFoot_GetModVariable(__mod, BigFoot_be741bd2030ad8ad70d14fb34b673ab8)
    local BigFoot_051cc0cd78a11469a8f78d2062970ca9 = BigFoot_Config[__mod];
    if (not BigFoot_051cc0cd78a11469a8f78d2062970ca9) then
        BigFoot_22055e427df00b6ded4c974381125d87(__mod);
        BigFoot_051cc0cd78a11469a8f78d2062970ca9 = BigFoot_Config[__mod];
    end
    if (not BigFoot_051cc0cd78a11469a8f78d2062970ca9) then
        return nil;
    end
    if (not BigFoot_051cc0cd78a11469a8f78d2062970ca9[BigFoot_be741bd2030ad8ad70d14fb34b673ab8]) then
        if (BigFoot_be741bd2030ad8ad70d14fb34b673ab8) then
            BigFoot_051cc0cd78a11469a8f78d2062970ca9[BigFoot_be741bd2030ad8ad70d14fb34b673ab8] = ModManagement_GetDefaultValue(__mod, BigFoot_be741bd2030ad8ad70d14fb34b673ab8);
        end
    end
    return BigFoot_051cc0cd78a11469a8f78d2062970ca9[BigFoot_be741bd2030ad8ad70d14fb34b673ab8];
end
function BigFoot_SetModVariable(__mod, BigFoot_be741bd2030ad8ad70d14fb34b673ab8, BigFoot_2361bab8b48b1041ad740bb561b21aee)
    if (not BigFoot_Config[__mod]) then
        BigFoot_Config[__mod] = {};
    end
    BigFoot_Config[__mod][BigFoot_be741bd2030ad8ad70d14fb34b673ab8] = BigFoot_2361bab8b48b1041ad740bb561b21aee;
end
function BigFoot_FindTableValue(BigFoot_49ccc92cd1bef60d860c1c7f84aaab89, BigFoot_2361bab8b48b1041ad740bb561b21aee)
    for BigFoot_413bf9c15ce77baa8ebf1cda4cbf4887, BigFoot_536473f22dedf9f29b94b1004a62b8a0 in pairs(BigFoot_49ccc92cd1bef60d860c1c7f84aaab89) do
        if (BigFoot_2361bab8b48b1041ad740bb561b21aee == BigFoot_536473f22dedf9f29b94b1004a62b8a0) then
            return BigFoot_413bf9c15ce77baa8ebf1cda4cbf4887;
        end
    end
    return nil;
end
function BigFoot_22055e427df00b6ded4c974381125d87(__mod)
    if (__mod) then
        if (not BigFoot_ModOptionConfig[__mod]) then
            return ;
        end
        BigFoot_Config[__mod] = {};
        local __index, BigFoot_2361bab8b48b1041ad740bb561b21aee;
        for __index, BigFoot_2361bab8b48b1041ad740bb561b21aee in pairs(BigFoot_ModOptionConfig[__mod]) do
            if (BigFoot_2361bab8b48b1041ad740bb561b21aee.variable) then
                BigFoot_Config[__mod][BigFoot_2361bab8b48b1041ad740bb561b21aee.variable] = BigFoot_2361bab8b48b1041ad740bb561b21aee.default;
            end
        end
    else
        BigFoot_Config = {};
        local BigFoot_7c2206e66bf7b5bacd2aa77f76bf4ff2, BigFoot_3bb367e1f150a93c099e99df8d49e180;
        for BigFoot_7c2206e66bf7b5bacd2aa77f76bf4ff2, BigFoot_3bb367e1f150a93c099e99df8d49e180 in pairs(BigFoot_ModOptionConfig) do
            if (not BigFoot_Config[BigFoot_7c2206e66bf7b5bacd2aa77f76bf4ff2]) then
                BigFoot_Config[BigFoot_7c2206e66bf7b5bacd2aa77f76bf4ff2] = {};
            end
            local __index, BigFoot_2361bab8b48b1041ad740bb561b21aee;
            for __index, BigFoot_2361bab8b48b1041ad740bb561b21aee in pairs(BigFoot_ModOptionConfig[__mod]) do
                if (BigFoot_2361bab8b48b1041ad740bb561b21aee.variable) then
                    BigFoot_Config[BigFoot_7c2206e66bf7b5bacd2aa77f76bf4ff2][BigFoot_2361bab8b48b1041ad740bb561b21aee.variable] = BigFoot_2361bab8b48b1041ad740bb561b21aee.default;
                end
            end
        end
    end
end
function Save_fault_info(message)
    BigFoot_Config = BigFoot_Config or {}
    BigFoot_Config.ErrorMessage = BigFoot_Config.ErrorMessage or {}
    tinsert(BigFoot_Config.ErrorMessage, message)
end
function BigFoot_5cce98c7af8139064e065c4da9901881()
    local __mod, BigFoot_3bb367e1f150a93c099e99df8d49e180;
    local BigFoot_e914904fab9d05d3f54d52bfc31a0f3f, BigFoot_2361bab8b48b1041ad740bb561b21aee;
    for __mod, BigFoot_3bb367e1f150a93c099e99df8d49e180 in pairs(BigFoot_ModOptionConfig) do
        for BigFoot_e914904fab9d05d3f54d52bfc31a0f3f, BigFoot_2361bab8b48b1041ad740bb561b21aee in pairs(BigFoot_3bb367e1f150a93c099e99df8d49e180) do
            if (BigFoot_2361bab8b48b1041ad740bb561b21aee.init and BigFoot_2361bab8b48b1041ad740bb561b21aee.type ~= "BUTTON") then
                local tag, message
                if BigFoot_2361bab8b48b1041ad740bb561b21aee.indent > 0 and BigFoot_2361bab8b48b1041ad740bb561b21aee.parent then
                    tag, message = pcall(BigFoot_2361bab8b48b1041ad740bb561b21aee.init, BigFoot_GetModVariable(__mod, BigFoot_2361bab8b48b1041ad740bb561b21aee.parent) == 1 and BigFoot_GetModVariable(__mod, BigFoot_2361bab8b48b1041ad740bb561b21aee.variable));
                else
                    tag, message = pcall(BigFoot_2361bab8b48b1041ad740bb561b21aee.init, BigFoot_GetModVariable(__mod, BigFoot_2361bab8b48b1041ad740bb561b21aee.variable));
                end
                if not tag then
                    Save_fault_info(message)
                end
            end
        end
    end
end
function BigFoot_ShowKeyBindingFrame(BigFoot_7739b813d90aed43ab9d0eb84ec1c1ae)
    if (BigFoot_7739b813d90aed43ab9d0eb84ec1c1ae == nil) then
        KeyBindingFrame_LoadUI();
        ShowUIPanel(KeyBindingFrame);
        return ;
    end
    local BigFoot_b52e349dfc92773f7d6f1dd51228ec0a = GetNumBindings();
    for BigFoot_e914904fab9d05d3f54d52bfc31a0f3f = 1, BigFoot_b52e349dfc92773f7d6f1dd51228ec0a, 1 do
        local BigFoot_d28056e4bcd8f214a25daeabfe052d6e, BigFoot_31c593401a06ae783f934538e503e6e1, BigFoot_59981dde119ddaafbcbf4b1ac8eae22d = GetBinding(BigFoot_e914904fab9d05d3f54d52bfc31a0f3f);
        if (BigFoot_d28056e4bcd8f214a25daeabfe052d6e == BigFoot_7739b813d90aed43ab9d0eb84ec1c1ae) then
            KeyBindingFrame_LoadUI();
            ShowUIPanel(KeyBindingFrame);
            KeyBindingFrameScrollFrameScrollBar:SetValue((BigFoot_e914904fab9d05d3f54d52bfc31a0f3f - 1) * KEY_BINDING_HEIGHT);
        end
    end
end
function BigFoot_786b766d1fd0bf879fd94c1f876cd079(self)
    if (BigFoot_44494375213dfd73e10daddf227fe7fd) then
        OpenAllBags(1);
    end
end
function BigFoot_f044c02de3e35387101ef8bf33fca114(self)
    if (BigFoot_44494375213dfd73e10daddf227fe7fd) then
        CloseAllBags();
    end
end
function BigFoot_6b2b31b051710342eee9ef69c10b3393()
    if (MOVING_BIGFOOTBAR) then
        MOVING_BIGFOOTBAR:StopMovingOrSizing();
    end
    if (MOVING_INFOBOX) then
        MOVING_INFOBOX:StopMovingOrSizing();
    end
end
function BigFoot_a9ccdced48307818b972a7083516c3dd(BigFoot_e6955c64cf39bdb23dc86de1a9ec2117, BigFoot_0e2babf2e3097eec96cf9280d1412ab5, BigFoot_00ae4bc475ffbcf97f789256a2e707de, BigFoot_6599f8c6a1b53d0212dfbab04e14e329, BigFoot_18bd17b74c56bfd23801044c9c9e8d4e, BigFoot_a29776f66159eb25625ce8ff4969048f, BigFoot_fe4d4227ea1d91e3a69c7b2a27e8150f, BigFoot_ff9ac8c817fb600a8633bbac91acd135, BigFoot_d2a75f7d621ef7006d92cec86286568b)
    local BigFoot_71ac8c04e9eae3efc1f0b8abcf51fc4c = BigFoot_GenCheckSum(BigFoot_e6955c64cf39bdb23dc86de1a9ec2117);
    BigFoot_Error[BigFoot_71ac8c04e9eae3efc1f0b8abcf51fc4c] = BigFoot_e6955c64cf39bdb23dc86de1a9ec2117;
    BigFoot_7e509fa6eb57f1a7c21df230042b0a81(BigFoot_e6955c64cf39bdb23dc86de1a9ec2117, BigFoot_0e2babf2e3097eec96cf9280d1412ab5, BigFoot_00ae4bc475ffbcf97f789256a2e707de, BigFoot_6599f8c6a1b53d0212dfbab04e14e329, BigFoot_18bd17b74c56bfd23801044c9c9e8d4e, BigFoot_a29776f66159eb25625ce8ff4969048f, BigFoot_fe4d4227ea1d91e3a69c7b2a27e8150f, BigFoot_ff9ac8c817fb600a8633bbac91acd135, BigFoot_d2a75f7d621ef7006d92cec86286568b);
end
function BigFoot_GenCheckSum(BigFoot_6e4d0db7491d6883f86de390d20dbe5b)
    if (BigFoot_6e4d0db7491d6883f86de390d20dbe5b == nil) then
        return nil;
    end
    local __len = string.len(BigFoot_6e4d0db7491d6883f86de390d20dbe5b);
    local BigFoot_b38a7bb9216803102fdc3d9f7a3d2e84 = 0;
    local BigFoot_05a435746a4fa320ec7c59ba02cf6c6a = 0;
    for __index = 1, __len, 1 do
        if (math.mod(__index, 2) == 0) then
            BigFoot_05a435746a4fa320ec7c59ba02cf6c6a = BigFoot_05a435746a4fa320ec7c59ba02cf6c6a + string.byte(BigFoot_6e4d0db7491d6883f86de390d20dbe5b, __index);
        else
            BigFoot_b38a7bb9216803102fdc3d9f7a3d2e84 = BigFoot_b38a7bb9216803102fdc3d9f7a3d2e84 + string.byte(BigFoot_6e4d0db7491d6883f86de390d20dbe5b, __index);
        end
    end
    return (BigFoot_b38a7bb9216803102fdc3d9f7a3d2e84 * BigFoot_05a435746a4fa320ec7c59ba02cf6c6a);
end
BigFoot_7e509fa6eb57f1a7c21df230042b0a81 = message;
message = BigFoot_a9ccdced48307818b972a7083516c3dd;
function BigFoot_f5b6f344e3abaf8220ddb46306cf34fc()
    BigFoot_Print(string.format(BF_VERSION_PATTERN, BIGFOOT_VERSION));
end
function BigFoot_97401a5bc610241b41f9546a71f92484()
    BigFootReader_ShowBook(BF_CHANGELOG_TEXT);
end
function BigFoot_86fe97520da716173394d4f6dd39a9e7(self, arg1, arg2, checked)
    BigFoot_ToggleDualFinding(checked)
end
function BigFoot_b5d3fbbb39737107d19770a6601568c8()
    local BigFoot_a44ecbf575d7f2eca081a0592e8d84fa = {};
    BigFoot_a44ecbf575d7f2eca081a0592e8d84fa = {};
    BigFoot_a44ecbf575d7f2eca081a0592e8d84fa.text = BF_BASIC_INFO;
    BigFoot_a44ecbf575d7f2eca081a0592e8d84fa.isTitle = 1;
    BigFoot_a44ecbf575d7f2eca081a0592e8d84fa.notCheckable = 1;
    BDropDownMenu_AddButton(BigFoot_a44ecbf575d7f2eca081a0592e8d84fa);
    BigFoot_a44ecbf575d7f2eca081a0592e8d84fa = {};
    BigFoot_a44ecbf575d7f2eca081a0592e8d84fa.text = BF_VERSION_INFO;
    BigFoot_a44ecbf575d7f2eca081a0592e8d84fa.func = BigFoot_f5b6f344e3abaf8220ddb46306cf34fc;
    BDropDownMenu_AddButton(BigFoot_a44ecbf575d7f2eca081a0592e8d84fa);
    BigFoot_a44ecbf575d7f2eca081a0592e8d84fa = {};
    BigFoot_a44ecbf575d7f2eca081a0592e8d84fa.text = BF_CHANGELOG_TEXT;
    BigFoot_a44ecbf575d7f2eca081a0592e8d84fa.func = BigFoot_97401a5bc610241b41f9546a71f92484;
    BDropDownMenu_AddButton(BigFoot_a44ecbf575d7f2eca081a0592e8d84fa);
    BigFoot_a44ecbf575d7f2eca081a0592e8d84fa = {};
    BigFoot_a44ecbf575d7f2eca081a0592e8d84fa.text = BF_EXTRA_FUNCTION;
    BigFoot_a44ecbf575d7f2eca081a0592e8d84fa.isTitle = 1;
    BigFoot_a44ecbf575d7f2eca081a0592e8d84fa.notCheckable = 1;
    BDropDownMenu_AddButton(BigFoot_a44ecbf575d7f2eca081a0592e8d84fa);
    BigFoot_a44ecbf575d7f2eca081a0592e8d84fa = {};
    BigFoot_a44ecbf575d7f2eca081a0592e8d84fa.text = BF_SHUANGCAI;
    BigFoot_a44ecbf575d7f2eca081a0592e8d84fa.func = BigFoot_86fe97520da716173394d4f6dd39a9e7;
    BigFoot_a44ecbf575d7f2eca081a0592e8d84fa.checked = BigFoot_IsDualFidingEnabled
    BigFoot_a44ecbf575d7f2eca081a0592e8d84fa.keepShownOnClick = true;
    BigFoot_a44ecbf575d7f2eca081a0592e8d84fa.notCheckable = nil;
    BDropDownMenu_AddButton(BigFoot_a44ecbf575d7f2eca081a0592e8d84fa);
end
function BigFootMiniButtonDropDown_OnLoad(self)
    BDropDownMenu_Initialize(self, BigFoot_b5d3fbbb39737107d19770a6601568c8, "MENU");
    BDropDownMenu_SetButtonWidth(self, 50);
    BDropDownMenu_SetWidth(self, 50);
end
function IsConfigurableAddOn(BigFoot_8983c60d66c8593ec7165ea9dbedb584)
    if (GetAddOnMetadata(BigFoot_8983c60d66c8593ec7165ea9dbedb584, "X-Revision") ~= "BigFoot") then
        return false;
    end
    local BigFoot_8983c60d66c8593ec7165ea9dbedb584, BigFoot_12e49080c26b8b9fdea4fa8965254f05, BigFoot_19ca54737e1e4b237f9e1a636369d31a, BigFoot_98a5dc0296fddcc9b5b804f038f1994c, BigFoot_6e796e791bd77e15e6dffea970d4e041, BigFoot_82a3188377d673bfd578b4a1954a3b2c, BigFoot_d895300db5802e1139a25cc923c14f5b = GetAddOnInfo(BigFoot_8983c60d66c8593ec7165ea9dbedb584);
    if (not BigFoot_98a5dc0296fddcc9b5b804f038f1994c) then
        return false;
    end
    return true;
end
function BigFoot_IsFramePlacedByUser(BigFoot_411b8aa6d5954c6020f0b9c9e80e847a)
    assert(BigFoot_411b8aa6d5954c6020f0b9c9e80e847a)
    BigFoot_8d0febf2348ea712b2b375ae95601d5f = BigFoot_411b8aa6d5954c6020f0b9c9e80e847a:GetName();
    return BigFoot_411b8aa6d5954c6020f0b9c9e80e847a.BigFoot_22682cb060092ed963ec91a4859bd63b;
end
function BigFoot_RequestReloadUI(onCancelled)
    StaticPopupDialogs["RELOADUI_CONFIRM"].OnCancel = onCancelled;
    StaticPopup_Show("RELOADUI_CONFIRM");
end
function BigFoot_fff18c914a5b3a8d509f2dff0f3fc382()
    for BigFoot_e914904fab9d05d3f54d52bfc31a0f3f = 1, 4, 1 do
        local BigFoot_9e83872083ad957c8f380801be754171 = getglobal("PartyMemberFrame" .. BigFoot_e914904fab9d05d3f54d52bfc31a0f3f);
        BigFoot_9e83872083ad957c8f380801be754171.anchor_frame = CreateFrame("Frame", nil, BigFoot_9e83872083ad957c8f380801be754171);
        BigFoot_9e83872083ad957c8f380801be754171.anchor_frame:SetPoint("TOP", BigFoot_9e83872083ad957c8f380801be754171, "TOP", 0, 0);
        BigFoot_9e83872083ad957c8f380801be754171.anchor_frame:SetPoint("BOTTOM", BigFoot_9e83872083ad957c8f380801be754171, "BOTTOM", 0, 0);
        BigFoot_9e83872083ad957c8f380801be754171.anchor_frame:SetPoint("LEFT", BigFoot_9e83872083ad957c8f380801be754171, "RIGHT", 0, 0);
        BigFoot_9e83872083ad957c8f380801be754171.anchor_frame:SetWidth(1);
        BigFoot_9e83872083ad957c8f380801be754171.virtual_frames = {};
        BigFoot_9e83872083ad957c8f380801be754171.UpdateAnchorFrames = function(self)
            self.virtual_width = 0;
            for BigFoot_e914904fab9d05d3f54d52bfc31a0f3f = 9, 1, -1 do
                if (self.virtual_frames[BigFoot_e914904fab9d05d3f54d52bfc31a0f3f]) then
                    for BigFoot_5e57ab95c762a48d9a126b104db1056f, BigFoot_2e00ffac12aadb3a1fd865993ec505b9 in ipairs(self.virtual_frames[BigFoot_e914904fab9d05d3f54d52bfc31a0f3f]) do
                        BigFoot_2e00ffac12aadb3a1fd865993ec505b9.frame:SetPoint(BigFoot_2e00ffac12aadb3a1fd865993ec505b9.point, self, BigFoot_2e00ffac12aadb3a1fd865993ec505b9.rpoint, self.virtual_width + BigFoot_2e00ffac12aadb3a1fd865993ec505b9.x, BigFoot_2e00ffac12aadb3a1fd865993ec505b9.y);
                        self.virtual_width = self.virtual_width + BigFoot_2e00ffac12aadb3a1fd865993ec505b9.width;
                    end
                end
            end
            if self.virtual_width > 140 then
                BFSecureCall(TargetFrame.SetPoint, TargetFrame, "TOPLEFT", UIParent, "TOPLEFT", 292 + self.virtual_width - 140, -4)
            else
                BFSecureCall(TargetFrame.SetPoint, TargetFrame, "TOPLEFT", UIParent, "TOPLEFT", 292, -4)
            end
        end;
        BigFoot_9e83872083ad957c8f380801be754171.RegisterAnchorFrame = function(self, BigFoot_411b8aa6d5954c6020f0b9c9e80e847a, BigFoot_8e2d4ef9193eed09cc6ce5849fad1f0a, BigFoot_7dce5c33f0d4836b30c14f18b2fc43f7, BigFoot_7c8715eaf85fa16b3da6112f58ebd62d, BigFoot_b254e387cf58e982ba24fcb3e8a63995, BigFoot_a0f453fd098c0b0fda780f69cda6ffbf, BigFoot_aacf928ffa23e474a000b1b6292d02a9)
            if (not self.virtual_frames[BigFoot_8e2d4ef9193eed09cc6ce5849fad1f0a]) then
                self.virtual_frames[BigFoot_8e2d4ef9193eed09cc6ce5849fad1f0a] = {};
            end
            for BigFoot_e914904fab9d05d3f54d52bfc31a0f3f, BigFoot_2e00ffac12aadb3a1fd865993ec505b9 in ipairs(self.virtual_frames[BigFoot_8e2d4ef9193eed09cc6ce5849fad1f0a]) do
                if (BigFoot_2e00ffac12aadb3a1fd865993ec505b9.frame == BigFoot_411b8aa6d5954c6020f0b9c9e80e847a) then
                    BigFoot_2e00ffac12aadb3a1fd865993ec505b9.width = BigFoot_aacf928ffa23e474a000b1b6292d02a9;
                    BigFoot_2e00ffac12aadb3a1fd865993ec505b9.point = BigFoot_7dce5c33f0d4836b30c14f18b2fc43f7;
                    BigFoot_2e00ffac12aadb3a1fd865993ec505b9.rpoint = BigFoot_7c8715eaf85fa16b3da6112f58ebd62d;
                    BigFoot_2e00ffac12aadb3a1fd865993ec505b9.x = BigFoot_b254e387cf58e982ba24fcb3e8a63995;
                    BigFoot_2e00ffac12aadb3a1fd865993ec505b9.y = BigFoot_a0f453fd098c0b0fda780f69cda6ffbf;
                    self:UpdateAnchorFrames();
                    return ;
                end
            end
            local BigFoot_2e00ffac12aadb3a1fd865993ec505b9 = {};
            BigFoot_2e00ffac12aadb3a1fd865993ec505b9.frame = BigFoot_411b8aa6d5954c6020f0b9c9e80e847a;
            BigFoot_2e00ffac12aadb3a1fd865993ec505b9.width = BigFoot_aacf928ffa23e474a000b1b6292d02a9;
            BigFoot_2e00ffac12aadb3a1fd865993ec505b9.point = BigFoot_7dce5c33f0d4836b30c14f18b2fc43f7;
            BigFoot_2e00ffac12aadb3a1fd865993ec505b9.rpoint = BigFoot_7c8715eaf85fa16b3da6112f58ebd62d;
            BigFoot_2e00ffac12aadb3a1fd865993ec505b9.x = BigFoot_b254e387cf58e982ba24fcb3e8a63995;
            BigFoot_2e00ffac12aadb3a1fd865993ec505b9.y = BigFoot_a0f453fd098c0b0fda780f69cda6ffbf;
            table.insert(self.virtual_frames[BigFoot_8e2d4ef9193eed09cc6ce5849fad1f0a], BigFoot_2e00ffac12aadb3a1fd865993ec505b9);
            self:UpdateAnchorFrames();
        end;
        BigFoot_9e83872083ad957c8f380801be754171.UnregisterAnchorFrame = function(self, BigFoot_411b8aa6d5954c6020f0b9c9e80e847a)
            for BigFoot_e914904fab9d05d3f54d52bfc31a0f3f = 1, 9, 1 do
                if (self.virtual_frames[BigFoot_e914904fab9d05d3f54d52bfc31a0f3f]) then
                    for BigFoot_5e57ab95c762a48d9a126b104db1056f, BigFoot_2e00ffac12aadb3a1fd865993ec505b9 in ipairs(self.virtual_frames[BigFoot_e914904fab9d05d3f54d52bfc31a0f3f]) do
                        if (BigFoot_2e00ffac12aadb3a1fd865993ec505b9.frame == BigFoot_411b8aa6d5954c6020f0b9c9e80e847a) then
                            table.remove(self.virtual_frames[BigFoot_e914904fab9d05d3f54d52bfc31a0f3f], BigFoot_5e57ab95c762a48d9a126b104db1056f);
                            self:UpdateAnchorFrames();
                            return ;
                        end
                    end
                end
            end
        end;
    end
end
function BigFoot_IsClientRunning()
    return BFClient_Running;
end
function BigFoot_LoadAddOn(BigFoot_1652701c940a7445a6e43b954d36ec9b)
    if (not BigFoot_IsAddOnLoaded(BigFoot_1652701c940a7445a6e43b954d36ec9b)) then
        LoadAddOn(BigFoot_1652701c940a7445a6e43b954d36ec9b);
        BigFoot_54712cfd3a2c182c0e5e07016c830ccb[BigFoot_1652701c940a7445a6e43b954d36ec9b] = true;
    end
    return BigFoot_IsAddOnLoaded(BigFoot_1652701c940a7445a6e43b954d36ec9b);
end
function BigFoot_IsAddOnLoaded(BigFoot_1652701c940a7445a6e43b954d36ec9b)
    return IsAddOnLoaded(BigFoot_1652701c940a7445a6e43b954d36ec9b);
end
function BigFoot_IsAddOnLoadedFromBigFoot(BigFoot_1652701c940a7445a6e43b954d36ec9b)
    if (IsAddOnLoaded(BigFoot_1652701c940a7445a6e43b954d36ec9b)) then
        if (BigFoot_54712cfd3a2c182c0e5e07016c830ccb[BigFoot_1652701c940a7445a6e43b954d36ec9b]) then
            return true;
        end
    end
    return false;
end
function BigFoot_IsAddOnLoadedFromOther(BigFoot_1652701c940a7445a6e43b954d36ec9b)
    if (IsAddOnLoaded(BigFoot_1652701c940a7445a6e43b954d36ec9b)) then
        if (BigFoot_54712cfd3a2c182c0e5e07016c830ccb[BigFoot_1652701c940a7445a6e43b954d36ec9b]) then
            return false;
        end
        return true;
    end
    return false;
end
function BigFoot_HasAddon(name)
    if (not name or type(name) ~= "string") then
        return false;
    end
    local max_addon = GetNumAddOns();
    for i = 1, max_addon, 1 do
        local addon_name = GetAddOnInfo(i);
        if (addon_name == name) then
            return true;
        end
    end
    return false;
end
