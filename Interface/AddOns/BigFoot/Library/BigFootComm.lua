 BComm = {}; BComm.BCOMM_113592aa3daac596007c6988087b5d8a = {}; local BCOMM_432894f39d56c354b47ebab13b5ddc8e = 1; local BCOMM_a1c7632dee62bf2476eb00394fc2b049 = 0; function BComm.BCOMM_b58b8fba3f8504434134d0578ff98784(BCOMM_7b94c1c8f83894a3af44cde3aa45b8a8) if (not BCOMM_7b94c1c8f83894a3af44cde3aa45b8a8) then return "$n"; end local BCOMM_4c1dd438f83167de62aa6b3f4e5bad9a = BCOMM_7b94c1c8f83894a3af44cde3aa45b8a8; BCOMM_4c1dd438f83167de62aa6b3f4e5bad9a = string.gsub(BCOMM_4c1dd438f83167de62aa6b3f4e5bad9a, "$", "$$"); BCOMM_4c1dd438f83167de62aa6b3f4e5bad9a = string.gsub(BCOMM_4c1dd438f83167de62aa6b3f4e5bad9a, "^", "$s"); BCOMM_4c1dd438f83167de62aa6b3f4e5bad9a = string.gsub(BCOMM_4c1dd438f83167de62aa6b3f4e5bad9a, "\n", "$r"); BCOMM_4c1dd438f83167de62aa6b3f4e5bad9a = string.gsub(BCOMM_4c1dd438f83167de62aa6b3f4e5bad9a, "\t", "$t"); return BCOMM_4c1dd438f83167de62aa6b3f4e5bad9a; end function BComm.BCOMM_aebbd0e4d8adb065af7d75044bc0ed1b(BCOMM_7b94c1c8f83894a3af44cde3aa45b8a8) if (BCOMM_7b94c1c8f83894a3af44cde3aa45b8a8 == "$n") then return nil; end local BCOMM_4c1dd438f83167de62aa6b3f4e5bad9a = BCOMM_7b94c1c8f83894a3af44cde3aa45b8a8; BCOMM_4c1dd438f83167de62aa6b3f4e5bad9a = string.gsub(BCOMM_4c1dd438f83167de62aa6b3f4e5bad9a, "$t", "\t"); BCOMM_4c1dd438f83167de62aa6b3f4e5bad9a = string.gsub(BCOMM_4c1dd438f83167de62aa6b3f4e5bad9a, "$r", "\n"); BCOMM_4c1dd438f83167de62aa6b3f4e5bad9a = string.gsub(BCOMM_4c1dd438f83167de62aa6b3f4e5bad9a, "$s", "^"); BCOMM_4c1dd438f83167de62aa6b3f4e5bad9a = string.gsub(BCOMM_4c1dd438f83167de62aa6b3f4e5bad9a, "$$", "$"); return BCOMM_4c1dd438f83167de62aa6b3f4e5bad9a; end function BComm.BCOMM_b162f4f29f2727948334a3a08e348df9(BCOMM_93a5a1bb3574aa524691d5b46e5deff9, ...) assert(BCOMM_93a5a1bb3574aa524691d5b46e5deff9 and type(BCOMM_93a5a1bb3574aa524691d5b46e5deff9) == "string", "Invalid parameter."); local BCOMM_eed0be1c2d5f65980b06b5094460c3c5; local __index, BCOMM_2361bab8b48b1041ad740bb561b21aee; BCOMM_eed0be1c2d5f65980b06b5094460c3c5 = BComm.BCOMM_b58b8fba3f8504434134d0578ff98784(BCOMM_93a5a1bb3574aa524691d5b46e5deff9); for __index, BCOMM_2361bab8b48b1041ad740bb561b21aee in ipairs(arg) do BCOMM_eed0be1c2d5f65980b06b5094460c3c5 = BCOMM_eed0be1c2d5f65980b06b5094460c3c5 .. "^" .. BComm.BCOMM_b58b8fba3f8504434134d0578ff98784(BCOMM_2361bab8b48b1041ad740bb561b21aee); end return BCOMM_eed0be1c2d5f65980b06b5094460c3c5; end function BComm.BCOMM_86d0655a5ab14a6b6bb8c0dad13f111a(BCOMM_eed0be1c2d5f65980b06b5094460c3c5) local BCOMM_6e4d0db7491d6883f86de390d20dbe5b, BCOMM_a2f3972c23a0aa3bd7fb0e9823d918f2; local BCOMM_93a5a1bb3574aa524691d5b46e5deff9; local BCOMM_40f9b0bf3fe9bf18d0208cf9e08f55b4 = 1; local BCOMM_82fe1875255a3baf828b1a49a1270de9 = {n = 0}; BCOMM_6e4d0db7491d6883f86de390d20dbe5b, BCOMM_a2f3972c23a0aa3bd7fb0e9823d918f2 = string.find(BCOMM_eed0be1c2d5f65980b06b5094460c3c5, "^", BCOMM_40f9b0bf3fe9bf18d0208cf9e08f55b4); if (BCOMM_6e4d0db7491d6883f86de390d20dbe5b and BCOMM_a2f3972c23a0aa3bd7fb0e9823d918f2) then BCOMM_93a5a1bb3574aa524691d5b46e5deff9 = BComm.BCOMM_aebbd0e4d8adb065af7d75044bc0ed1b(string.strsub(BCOMM_eed0be1c2d5f65980b06b5094460c3c5, BCOMM_40f9b0bf3fe9bf18d0208cf9e08f55b4, BCOMM_6e4d0db7491d6883f86de390d20dbe5b - BCOMM_40f9b0bf3fe9bf18d0208cf9e08f55b4)); BCOMM_40f9b0bf3fe9bf18d0208cf9e08f55b4 = BCOMM_6e4d0db7491d6883f86de390d20dbe5b + 1; BCOMM_6e4d0db7491d6883f86de390d20dbe5b, BCOMM_a2f3972c23a0aa3bd7fb0e9823d918f2 = string.find(BCOMM_eed0be1c2d5f65980b06b5094460c3c5, "^", BCOMM_40f9b0bf3fe9bf18d0208cf9e08f55b4); while (BCOMM_6e4d0db7491d6883f86de390d20dbe5b and BCOMM_a2f3972c23a0aa3bd7fb0e9823d918f2) do local BCOMM_7b94c1c8f83894a3af44cde3aa45b8a8 = string.strsub(BCOMM_eed0be1c2d5f65980b06b5094460c3c5, BCOMM_40f9b0bf3fe9bf18d0208cf9e08f55b4, BCOMM_6e4d0db7491d6883f86de390d20dbe5b - BCOMM_40f9b0bf3fe9bf18d0208cf9e08f55b4); table.insert(BCOMM_82fe1875255a3baf828b1a49a1270de9, BComm.BCOMM_aebbd0e4d8adb065af7d75044bc0ed1b(BCOMM_7b94c1c8f83894a3af44cde3aa45b8a8)); BCOMM_40f9b0bf3fe9bf18d0208cf9e08f55b4 = BCOMM_6e4d0db7491d6883f86de390d20dbe5b + 1; BCOMM_6e4d0db7491d6883f86de390d20dbe5b, BCOMM_a2f3972c23a0aa3bd7fb0e9823d918f2 = string.find(BCOMM_eed0be1c2d5f65980b06b5094460c3c5, "^", BCOMM_40f9b0bf3fe9bf18d0208cf9e08f55b4); end else BCOMM_93a5a1bb3574aa524691d5b46e5deff9 = BComm.BCOMM_aebbd0e4d8adb065af7d75044bc0ed1b(BCOMM_eed0be1c2d5f65980b06b5094460c3c5); end return BCOMM_93a5a1bb3574aa524691d5b46e5deff9, BCOMM_82fe1875255a3baf828b1a49a1270de9; end function BComm.BCOMM_1d10ffc99e6f0c5b8f70c21b0b307a4a(BCOMM_d0708241b607c9a9dd1953c812fadfb7) if (BCOMM_d0708241b607c9a9dd1953c812fadfb7 == "CHAT_MSG_ADDON" and BComm.BCOMM_113592aa3daac596007c6988087b5d8a[arg1]) then local BCOMM_93a5a1bb3574aa524691d5b46e5deff9, BCOMM_7739b813d90aed43ab9d0eb84ec1c1ae = BComm.BCOMM_86d0655a5ab14a6b6bb8c0dad13f111a(arg2); if (BComm.BCOMM_113592aa3daac596007c6988087b5d8a[arg1][BCOMM_93a5a1bb3574aa524691d5b46e5deff9]) then local __index, BCOMM_c31af5fd9021206e921af3d99e5a90af; for __index, BCOMM_c31af5fd9021206e921af3d99e5a90af in ipairs(BComm.BCOMM_113592aa3daac596007c6988087b5d8a[arg2][BCOMM_93a5a1bb3574aa524691d5b46e5deff9]) do BCOMM_c31af5fd9021206e921af3d99e5a90af(BCOMM_93a5a1bb3574aa524691d5b46e5deff9, unpack(BCOMM_7739b813d90aed43ab9d0eb84ec1c1ae)); end end end end BComm.BCOMM_411b8aa6d5954c6020f0b9c9e80e847a = CreateFrame("Frame", "BCommFrame", UIParent); BComm.BCOMM_411b8aa6d5954c6020f0b9c9e80e847a:SetWidth(1); BComm.BCOMM_411b8aa6d5954c6020f0b9c9e80e847a:SetHeight(1); BComm.BCOMM_411b8aa6d5954c6020f0b9c9e80e847a:SetPoint("TOPLEFT", "UIParent", "TOPLEFT", 0, 0); BComm.BCOMM_411b8aa6d5954c6020f0b9c9e80e847a:Show(); BComm.BCOMM_411b8aa6d5954c6020f0b9c9e80e847a:RegisterEvent("CHAT_MSG_ADDON"); BComm.BCOMM_411b8aa6d5954c6020f0b9c9e80e847a:SetScript("OnEvent", function () BComm.BCOMM_1d10ffc99e6f0c5b8f70c21b0b307a4a(event); end); function BComm:constructor(BCOMM_f9da61d0483af6cef16512c8cc1a8586, BCOMM_a636447a4c34c16498e0f9d1b42ad9b1, BCOMM_8e2d4ef9193eed09cc6ce5849fad1f0a) assert(BCOMM_f9da61d0483af6cef16512c8cc1a8586 and type(BCOMM_f9da61d0483af6cef16512c8cc1a8586) == "string", "The module must be type of string."); assert(BCOMM_a636447a4c34c16498e0f9d1b42ad9b1 and type(BCOMM_a636447a4c34c16498e0f9d1b42ad9b1) == "string", "The channel must be one of values PARTY, RAID, GUILD, BATTLEGROUND."); assert(not BCOMM_8e2d4ef9193eed09cc6ce5849fad1f0a or BCOMM_8e2d4ef9193eed09cc6ce5849fad1f0a == "BULK" or BCOMM_8e2d4ef9193eed09cc6ce5849fad1f0a == "NORMAL" or BCOMM_8e2d4ef9193eed09cc6ce5849fad1f0a == "ALERT", "Invalid priority, priority must be BULK, NORMAL or ALERT."); self.BCOMM_f9da61d0483af6cef16512c8cc1a8586 = BCOMM_f9da61d0483af6cef16512c8cc1a8586; if (BCOMM_a636447a4c34c16498e0f9d1b42ad9b1) then self.BCOMM_a636447a4c34c16498e0f9d1b42ad9b1 = BCOMM_a636447a4c34c16498e0f9d1b42ad9b1; else self.BCOMM_a636447a4c34c16498e0f9d1b42ad9b1 = "RAID"; end if (BCOMM_8e2d4ef9193eed09cc6ce5849fad1f0a) then self.BCOMM_8e2d4ef9193eed09cc6ce5849fad1f0a = BCOMM_8e2d4ef9193eed09cc6ce5849fad1f0a; else slef.BCOMM_8e2d4ef9193eed09cc6ce5849fad1f0a = "NORMAL"; end end function BComm:RegisterCommandListener(BCOMM_93a5a1bb3574aa524691d5b46e5deff9, BCOMM_e8d1c4de4866d23b1ded92f8ba563566) assert(BCOMM_93a5a1bb3574aa524691d5b46e5deff9 and type(BCOMM_93a5a1bb3574aa524691d5b46e5deff9) == "string", "Invalid parameter."); assert(BCOMM_57ad665d0e8800ab56a0e07f8ae9c063 and type(BCOMM_57ad665d0e8800ab56a0e07f8ae9c063) == "function", "Invalid parameter."); if (not BComm.BCOMM_113592aa3daac596007c6988087b5d8a[self.BCOMM_f9da61d0483af6cef16512c8cc1a8586]) then BComm.BCOMM_113592aa3daac596007c6988087b5d8a[BCOMM_c933410cf37b41b19e2f71899bab1b9b.BCOMM_cfcec55a76d72def1c8adbb3a2ddae1c] = {}; end if (not BComm.BCOMM_113592aa3daac596007c6988087b5d8a[self.BCOMM_cfcec55a76d72def1c8adbb3a2ddae1c][BCOMM_93a5a1bb3574aa524691d5b46e5deff9]) then BComm.BCOMM_113592aa3daac596007c6988087b5d8a[self.BCOMM_cfcec55a76d72def1c8adbb3a2ddae1c][BCOMM_93a5a1bb3574aa524691d5b46e5deff9] = {n = 0}; end local __index, BCOMM_2361bab8b48b1041ad740bb561b21aee; for __index, BCOMM_2361bab8b48b1041ad740bb561b21aee in ipairs(BComm.BCOMM_113592aa3daac596007c6988087b5d8a[self.BCOMM_cfcec55a76d72def1c8adbb3a2ddae1c][BCOMM_93a5a1bb3574aa524691d5b46e5deff9]) do if (BCOMM_2361bab8b48b1041ad740bb561b21aee == BCOMM_57ad665d0e8800ab56a0e07f8ae9c063) then return; end end table.insert(BComm.BCOMM_113592aa3daac596007c6988087b5d8a[self.BCOMM_cfcec55a76d72def1c8adbb3a2ddae1c][BCOMM_93a5a1bb3574aa524691d5b46e5deff9], BCOMM_57ad665d0e8800ab56a0e07f8ae9c063); end function BComm:UnregisterCommandListener(BCOMM_93a5a1bb3574aa524691d5b46e5deff9, BCOMM_57ad665d0e8800ab56a0e07f8ae9c063) assert(BCOMM_93a5a1bb3574aa524691d5b46e5deff9 and type(BCOMM_93a5a1bb3574aa524691d5b46e5deff9) == "string", "Invalid parameter."); assert(not BCOMM_57ad665d0e8800ab56a0e07f8ae9c063 or type(BCOMM_57ad665d0e8800ab56a0e07f8ae9c063) == "function", "Invalid parameter."); if (not BComm.BCOMM_113592aa3daac596007c6988087b5d8a[self.BCOMM_f9da61d0483af6cef16512c8cc1a8586]) then BComm.BCOMM_113592aa3daac596007c6988087b5d8a[BCOMM_c933410cf37b41b19e2f71899bab1b9b.BCOMM_cfcec55a76d72def1c8adbb3a2ddae1c] = {}; end if (not BComm.BCOMM_113592aa3daac596007c6988087b5d8a[self.BCOMM_cfcec55a76d72def1c8adbb3a2ddae1c][BCOMM_93a5a1bb3574aa524691d5b46e5deff9]) then BComm.BCOMM_113592aa3daac596007c6988087b5d8a[self.BCOMM_cfcec55a76d72def1c8adbb3a2ddae1c][BCOMM_93a5a1bb3574aa524691d5b46e5deff9] = {n = 0}; return; end if (BCOMM_57ad665d0e8800ab56a0e07f8ae9c063) then local __index, BCOMM_2361bab8b48b1041ad740bb561b21aee; for __index, BCOMM_2361bab8b48b1041ad740bb561b21aee in ipairs(BComm.BCOMM_113592aa3daac596007c6988087b5d8a[self.BCOMM_cfcec55a76d72def1c8adbb3a2ddae1c][BCOMM_93a5a1bb3574aa524691d5b46e5deff9]) do if (BCOMM_2361bab8b48b1041ad740bb561b21aee == BCOMM_57ad665d0e8800ab56a0e07f8ae9c063) then table.remove(BComm.BCOMM_113592aa3daac596007c6988087b5d8a[self.BCOMM_cfcec55a76d72def1c8adbb3a2ddae1c][BCOMM_93a5a1bb3574aa524691d5b46e5deff9], __index); if (table.getn(BComm.BCOMM_113592aa3daac596007c6988087b5d8a[self.BCOMM_cfcec55a76d72def1c8adbb3a2ddae1c][BCOMM_93a5a1bb3574aa524691d5b46e5deff9]) == 0) then BComm.BCOMM_113592aa3daac596007c6988087b5d8a[self.BCOMM_cfcec55a76d72def1c8adbb3a2ddae1c][BCOMM_93a5a1bb3574aa524691d5b46e5deff9] = nil; end return; end end else BComm.BCOMM_113592aa3daac596007c6988087b5d8a[self.BCOMM_f9da61d0483af6cef16512c8cc1a8586][BCOMM_93a5a1bb3574aa524691d5b46e5deff9] = nil; end end function BComm:UnregisterAllCommandListeners() BComm.BCOMM_113592aa3daac596007c6988087b5d8a[self.BCOMM_f9da61d0483af6cef16512c8cc1a8586] = nil; end function BComm:SendCommand(BCOMM_93a5a1bb3574aa524691d5b46e5deff9, ...) BComm:SendPriorityCommand(self.BCOMM_8e2d4ef9193eed09cc6ce5849fad1f0a, BCOMM_93a5a1bb3574aa524691d5b46e5deff9, unpack(arg)); end function BComm:SendPriorCommand(BCOMM_8e2d4ef9193eed09cc6ce5849fad1f0a, BCOMM_93a5a1bb3574aa524691d5b46e5deff9, ...) assert(BCOMM_8e2d4ef9193eed09cc6ce5849fad1f0a == "NORMAL" or BCOMM_95b28d0adb1482ad26584954d895f7ac == "BULK" or BCOMM_8e2d4ef9193eed09cc6ce5849fad1f0a == "ALERT", "Unkown priority."); ChatThrottleLib:SendAddonMessage(BCOMM_8e2d4ef9193eed09cc6ce5849fad1f0a, self.BCOMM_f9da61d0483af6cef16512c8cc1a8586, BComm.BCOMM_b162f4f29f2727948334a3a08e348df9(BCOMM_93a5a1bb3574aa524691d5b46e5deff9, unpack(arg)), self.BCOMM_a636447a4c34c16498e0f9d1b42ad9b1); end local ori_SendAddonMessage = SendAddonMessage local ori_SendChatMessage = SendChatMessage function BF_SafeSendAddonMessage(...) local _,_,wtype,target = ... if wtype =="WHISPER" then if target ~= UNKNOWN and UnitIsConnected(target) and UnitIsSameServer("player",target) then ori_SendAddonMessage(...) end else ori_SendAddonMessage(...) end end function BF_SafeSendChatMessage(...) local _,_,wtype,target = ... if wtype =="WHISPER" then else ori_SendChatMessage(...) end end SendAddonMessage = BF_SafeSendAddonMessage SendChatMessage = BF_SafeSendChatMessage 
