
-- Este no lo hice yo, pero funciona es lo bueno :)
-- y no se para quien sera los creditos como es viejo..

local command = "chat"
local WorldChannelName = "|r|TInterface\\icons\\achievement_bg_killxenemies_generalsroom:15|t |cffff0000[|cffff8000 World Chat|cffff0000 ] "
local CooldownTimer = 1

local Class = { 
    [1] = "|TInterface\\icons\\INV_Sword_27.png:15|t",              -- Warrior
    [2] = "|TInterface\\icons\\INV_Hammer_01.png:15|t",             -- Paladin
    [3] = "|TInterface\\icons\\INV_Weapon_Bow_07.png:15|t",          -- Hunter
    [4] = "|TInterface\\icons\\INV_ThrowingKnife_04.png:15|t",        -- Rogue
    [5] = "|TInterface\\icons\\INV_Staff_30.png:15|t",               -- Priest
    [6] = "|TInterface\\icons\\Spell_Deathknight_ClassIcon.png:15|t", -- Death Knight
    [7] = "|TInterface\\icons\\inv_jewelry_talisman_04.png:15|t",    -- Shaman
    [8] = "|TInterface\\icons\\INV_Staff_30.png:15|t",                 -- Mage
    [9] = "|TInterface\\icons\\INV_Staff_30.png:15|t",              -- Warlock
    [10] = "",                                                            					   -- Unk
    [11] = "[|TInterface\\icons\\Ability_Druid_Maul.png:15|t"         -- Druid
};

local RCD = {};
function ChatSystem222(event, player, msg, type, lang)
	if (msg:find(command.." ") == 1) then
		if RCD[player:GetName()] ~= nil and ((os.clock()-RCD[player:GetName()])) <= CooldownTimer then
			player:SendAreaTriggerMessage(" |cFFFF0000Esperad "..CooldownTimer.." segundos.")
		else
			RCD[player:GetName()] = os.clock()
			for _, v in pairs(GetPlayersInWorld()) do
				if(player:GetTeam() == 1) then
				v:SendBroadcastMessage(" |cFFCC0066["..WorldChannelName.." |cff00ff00|TInterface\\icons\\Inv_Misc_Tournaments_banner_Orc.png:15|t |r|cffff8080 |r|cffff6060"..Class[player:GetClass()].."|r|cff00ffff [|cff00ff40"..player:GetName().."|cff00ffff]: |r|cffc0c0c0"..msg:gsub(command.." ", "").."|r")
				else
				v:SendBroadcastMessage(" |cFFCC0066["..WorldChannelName.." |cff00ff00|TInterface\\icons\\Inv_Misc_Tournaments_banner_Human.png:15|t |r|cff00ccff"..Class[player:GetClass()].."|r|cff00ffff [|cff00ff40"..player:GetName().."|cff00ffff]: |r|cffc0c0c0"..msg:gsub(command.." ", "").."|r")
			end
		end
		return false
	end
	return true
	end
end

RegisterPlayerEvent(42, ChatSystem222)