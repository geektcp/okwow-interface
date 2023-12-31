﻿local L = AceLibrary("AceLocale-2.2"):new("GridStatusHots")

L:RegisterTranslations("enUS", function()
	return {
		["My HoTs"] = true,
		["Buff: Hot Count"] = true,
		["Buff: My Earth Shield"] = true,
		["Buff: My Gift of the Naaru"] = true,
		["Buff: My Renew"] = true,
		["Buff: My Rejuvenation"] = true,
		["Buff: My Regrowth"] = true,
		["Buff: My Lifebloom"] = true,
		["Buff: My Lifebloom Stack Colored"] = true,
		["Buff: My Wild Growth"] = true,
		["Buff: My Sheath of Light"] = true,
		["Buff: My Sacred Shield"] = true,
		["Buff: My Riptide"] = true,
		["Buff: My Earthliving"] = true,
		["Buff: My Flash of Light"] = true,
		["Buff: My Prayer of Mending"] = true,
		["Buff: My Beacon of Light"] = true,
		["Buff: My Grace Stack"] = true,
		["Buff: My Grace Duration + Stack"] = true,
		["Color when player has two charges of PoM."] = true,
		["Color when player has three charges of PoM."] = true,
		["Color when player has four charges of PoM."] = true,
		["Color when player has five charges of PoM."] = true,
		["Color when player has six charges of PoM."] = true,
		["Color when player has 2 charges of Earth Shield."] = true,
		["Color when player has 3 charges of Earth Shield."] = true,
		["Color when player has 4 charges of Earth Shield."] = true,
		["Color when player has 5 or more charges of Earth Shield."] = true,
		["Color when player has two charges of grace."] = true,
		["Color when player has three charges of grace."] = true,
		["Threshold to activate color 2"] = true,
		["Threshold to activate color 3"] = true,
		["Color 2"] = true,
		["Color 3"] = true,
		["Color 4"] = true,
		["Color 5"] = true,
		["Color 6"] = true,
		["Refresh frequency"] = true,
		["Seconds between status refreshes"] = true,
		["Count Lifebloom as 1 HoT per stack"] = true,
		["Check, if you want each stack of Lifebloom to count as 1 HoT"]= true,
		["Show HoT-Counter"] = true,
		["Check, if you want to see the total of HoTs behind the countdown of your HoT(i.e. 13-5)"]= true,
		["Show Flash of Light - HoT"] = true,
		["Check, if you want to see a countdown for your Flash of Light - HoT behind your Sacred Shield (i.e. 25-10)"] = true,
	}
end)

L:RegisterTranslations("zhCN", function()
	return {
		["My HoTs"] = "我的 HoTs",
		["Buff: Hot Count"] = "增益：HoT数",
		["Buff: My Earth Shield"] = "增益：我的大地之盾",
		["Buff: My Gift of the Naaru"] = "增益：我的那鲁的祝福",
		["Buff: My Renew"] = "增益：我的恢复",
		["Buff: My Rejuvenation"] = "增益：我的回春术",
		["Buff: My Regrowth"] = "增益：我的癒合",
		["Buff: My Lifebloom"] = "增益：我的生命之花",
		["Buff: My Lifebloom Stack Colored"] = "增益：我的生命之花堆叠着色",
		["Buff: My Wild Growth"] = "增益：我的野性成长",
		["Buff: My Sheath of Light"] = "增益：我的圣光之鞘",
		["Buff: My Sacred Shield"] = "增益：我的崇圣护盾",
		["Buff: My Riptide"] = "增益：我的激流",
		["Buff: My Earthliving"] = "增益：我的大地生命",
		["Buff: My Flash of Light"] = "增益：我的圣光闪现",
		["Buff: My Prayer of Mending"] = "增益：我的癒合祷言",
		["Buff: My Beacon of Light"] = "增益：我的圣光信标",
		["Buff: My Grace Stack"] = "增益：我的恩典堆叠",
		["Buff: My Grace Duration + Stack"] = "增益：我的恩典持续及堆叠",
		["Color when player has two charges of PoM."] = "当玩家拥有两层治疗效果时着色",
		["Color when player has three charges of PoM."] = "当玩家拥有三层治疗效果时着色",
		["Color when player has four charges of PoM."] = "当玩家拥有四层治疗效果时着色",
		["Color when player has five charges of PoM."] = "当玩家拥有五层治疗效果时着色",
		["Color when player has six charges of PoM."] = "当玩家拥有六层治疗效果时着色",
		["Color when player has 2 charges of Earth Shield."] = "当玩家拥有两层大地之盾时着色",
		["Color when player has 3 charges of Earth Shield."] = "当玩家拥有三层大地之盾时着色",
		["Color when player has 4 charges of Earth Shield."] = "当玩家拥有四层大地之盾时着色",
		["Color when player has 5 or more charges of Earth Shield."] = "当玩家拥有五层大地之盾或更多时着色",
		["Color when player has two charges of grace."] = "当玩家拥有两层恩典时着色",
		["Color when player has three charges of grace."] = "当玩家拥有三层恩典时着色",
		["Threshold to activate color 2"] = "启动2阶段颜色",
		["Threshold to activate color 3"] = "启动3阶段颜色",
		["Color 2"] = "颜色2",
		["Color 3"] = "颜色3",
		["Color 4"] = "颜色4",
		["Color 5"] = "颜色5",
		["Color 6"] = "颜色6",
		["Refresh frequency"] = "刷新频率",
		["Seconds between status refreshes"] = "两次状态刷新的间隔时间",
		["Count Lifebloom as 1 HoT per stack"] = "每层生命之花统计为1HoT",
		["Check, if you want each stack of Lifebloom to count as 1 HoT"]= "勾选后，每层生命之花将作为1个Hot来统计",
		["Show HoT-Counter"] = "显示HoT计数器",
		["Check, if you want to see the total of HoTs behind the countdown of your HoT(i.e. 13-5)"]= "勾选后，在总HoT数后方可看到你施放的HoT数 (例.13-5)",
		["Show Flash of Light - HoT"] = "显示圣光闪现的HoT",
		["Check, if you want to see a countdown for your Flash of Light - HoT behind your Sacred Shield (i.e. 25-10)"] = "勾选后，在崇圣护盾后方可看见你的圣光闪现的HoT数 (例.25-10)",
	}
end)

L:RegisterTranslations("zhTW", function()
	return {
		["My HoTs"] = "我的 HoTs",
		["Buff: Hot Count"] = "增益：HoT數",
		["Buff: My Earth Shield"] = "增益：我的大地之盾",
		["Buff: My Gift of the Naaru"] = "增益：我的那魯的祝福",
		["Buff: My Renew"] = "增益：我的恢復",
		["Buff: My Rejuvenation"] = "增益：我的回春術",
		["Buff: My Regrowth"] = "增益：我的癒合",
		["Buff: My Lifebloom"] = "增益：我的生命之花",
		["Buff: My Lifebloom Stack Colored"] = "增益：我的生命之花堆疊着色",
		["Buff: My Wild Growth"] = "增益：我的野性成長",
		["Buff: My Sheath of Light"] = "增益：我的聖光之鞘",
		["Buff: My Sacred Shield"] = "增益：我的崇聖護盾",
		["Buff: My Riptide"] = "增益：我的激流",
		["Buff: My Earthliving"] = "增益：我的大地生命",
		["Buff: My Flash of Light"] = "增益：我的聖光閃現",
		["Buff: My Prayer of Mending"] = "增益：我的癒合禱言",
		["Buff: My Beacon of Light"] = "增益：我的聖光信標",
		["Buff: My Grace Stack"] = "增益：我的恩典堆疊",
		["Buff: My Grace Duration + Stack"] = "增益：我的恩典持續及堆疊",
		["Color when player has two charges of PoM."] = "當玩家擁有兩層治療效果時着色",
		["Color when player has three charges of PoM."] = "當玩家擁有三層治療效果時着色",
		["Color when player has four charges of PoM."] = "當玩家擁有四層治療效果時着色",
		["Color when player has five charges of PoM."] = "當玩家擁有五層治療效果時着色",
		["Color when player has six charges of PoM."] = "當玩家擁有六層治療效果時着色",
		["Color when player has 2 charges of Earth Shield."] = "當玩家擁有兩層大地之盾時着色",
		["Color when player has 3 charges of Earth Shield."] = "當玩家擁有三層大地之盾時着色",
		["Color when player has 4 charges of Earth Shield."] = "當玩家擁有四層大地之盾時着色",
		["Color when player has 5 or more charges of Earth Shield."] = "當玩家擁有五層大地之盾或更多時着色",
		["Color when player has two charges of grace."] = "當玩家擁有兩層恩典時着色",
		["Color when player has three charges of grace."] = "當玩家擁有三層恩典時着色",
		["Threshold to activate color 2"] = "啟動2階段顏色",
		["Threshold to activate color 3"] = "啟動3階段顏色",
		["Color 2"] = "顏色2",
		["Color 3"] = "顏色3",
		["Color 4"] = "顏色4",
		["Color 5"] = "顏色5",
		["Color 6"] = "顏色6",
		["Refresh frequency"] = "刷新頻率",
		["Seconds between status refreshes"] = "兩次狀態刷新的間隔時間",
		["Count Lifebloom as 1 HoT per stack"] = "每層生命之花統計為1HoT",
		["Check, if you want each stack of Lifebloom to count as 1 HoT"]= "勾選後，每層生命之花將作為1個Hot來統計",
		["Show HoT-Counter"] = "顯示HoT計數器",
		["Check, if you want to see the total of HoTs behind the countdown of your HoT(i.e. 13-5)"]= "勾選後，在總HoT數後方可看到你施放的HoT數 (例.13-5)",
		["Show Flash of Light - HoT"] = "顯示聖光閃現的HoT",
		["Check, if you want to see a countdown for your Flash of Light - HoT behind your Sacred Shield (i.e. 25-10)"] = "勾選後，在崇聖護盾後方可看見你的聖光閃現的HoT數 (例.25-10)",
	}
end)
