ARENAS = {}



ARENAS.Token = "AQUI PON LA ID DE TU TOKEN" -- recuerda que va sin comillas	

ARENAS.Count = 1			
						
ARENAS.TokenOne = 1		
ARENAS.TokenTwo = 2		
ARENAS.TokenThree = 3	
ARENAS.TokenFour = 4	
ARENAS.TokenFive = 5 		
ARENAS.TokenSix = 6		
ARENAS.TokenSeven = 7
ARENAS.TokenEight = 8	
ARENAS.TokenNine = 9	
ARENAS.TokenTen = 10 		
ARENAS.TokenEleven = 11		




function ARENAS.OnARENASPlayer111(event, player, victim)
if (player:InArena() == true) then -- si el player esta en BG entonces funciona los anuncios.
	if (ARENAS[player:GetName()] == nil) then
		ARENAS[player:GetName()] = {}
		ARENAS[player:GetName()].ARENASstreak = 1
		ARENAS[victim:GetName()] = {}
		ARENAS[victim:GetName()].ARENASstreak = 0
		player:SendBroadcastMessage("Has matado a: |cFF90EE90"..victim:GetName().."")
		player:SendBroadcastMessage("Racha: |cFF90EE90"..ARENAS[player:GetName()].ARENASstreak.."")
		victim:SendBroadcastMessage("Has sido asesinado por: |cFF90EE90"..player:GetName().."")
		player:AddItem(ARENAS.Token1, ARENAS.TokenTwo) -- aqui da el token y la cantidad

	elseif (ARENAS[player:GetName()].ARENASstreak == nil) then
		ARENAS[player:GetName()].ARENASstreak = 1
		ARENAS[victim:GetName()] = {}
		ARENAS[victim:GetName()].ARENASstreak = 0
		player:SendBroadcastMessage("Has matado a: |cFF90EE90"..victim:GetName().."")
		player:SendBroadcastMessage("Racha: |cFF90EE90"..ARENAS[player:GetName()].ARENASstreak.."")
		victim:SendBroadcastMessage("Has sido asesinado por: |cFF90EE90"..player:GetName().."")
		player:AddItem(ARENAS.Token1, ARENAS.TokenTwo) -- aqui da el token y la cantidad
	else
		if ((ARENAS.PlayerCheck(player, victim)) == true) then
			ARENAS[player:GetName()].ARENASstreak = ARENAS[player:GetName()].ARENASstreak + 1
			ARENAS[victim:GetName()] = {}
			ARENAS[victim:GetName()].ARENASstreak = 0
			player:SendBroadcastMessage("Has matado a: |cFF90EE90"..victim:GetName().."")
			player:SendBroadcastMessage("Racha: |cFF90EE90"..ARENAS[player:GetName()].ARENASstreak.."")
			victim:SendBroadcastMessage("Has sido asesinado por: |cFF90EE90"..player:GetName().."")
			player:AddItem(ARENAS.Token1, ARENAS.TokenTwo) -- aqui da el token y la cantidad
			if (ARENAS[player:GetName()].ARENASstreak > 0) then
				if (ARENAS[player:GetName()].ARENASstreak < 10) then
				end
			end	
			
			
			if (ARENAS[player:GetName()].ARENASstreak == 2) then
					player:AddItem(ARENAS.Token1, ARENAS.TokenTwo) -- aqui da el token y la cantidad
					player:ModifyHonorPoints(500) -- aqui es para dar honor si mata a dos personas, tu le modificas cuanto honor quieres dar
					player:SendBroadcastMessage("|cff008080Announcer: |cffff8080Has ganado un botín +500 de Honor") -- mensaje que le saldra cuando mate a dos jugadores
					
				local plrs = GetPlayersInWorld() 
				for k, v in pairs(plrs) do
				-- todos estos son mejores, solo es para que se vea bonito y todos los vean...
				v:SendBroadcastMessage("|cFFADD8E6[PvP System]: |cff00ffff"..player:GetName().." |cFFFFFF00he's on a murder streak with "..ARENAS[player:GetName()].ARENASstreak.." ARENASs")
				v:SendAreaTriggerMessage(" |cFFFFFF00"..player:GetName().." is on a ARENAS Streak")
				v:SendBroadcastMessage("|cffff0000"..player:GetName().."|cffffff00 on ARENAS |cff00ffff"..victim:GetName().." |cffffff00in battle.")
				v:SendAreaTriggerMessage("   |TInterface\\icons\\Achievement_Garrison_Invasion:20|t |cffff0000"..player:GetName().." |cffffff00 has a Double ARENAS  |TInterface\\icons\\Achievement_Garrison_Invasion:20|t")
			end	
		end
		
		    if (ARENAS[player:GetName()].ARENASstreak == 3) then
					player:AddItem(ARENAS.Token1, ARENAS.TokenThree) -- aqui da el token y la cantidad
					player:ModifyHonorPoints(700) -- aqui es para dar honor si mata a dos personas, tu le modificas cuanto honor quieres dar
					player:SendBroadcastMessage("|cff008080Announcer: |cffff8080Has ganado un botín +500 de Honor") -- mensaje que le saldra cuando mate a dos jugadores
					
				local plrs = GetPlayersInWorld() 
				for k, v in pairs(plrs) do
				-- todos estos son mejores, solo es para que se vea bonito y todos los vean...
				v:SendBroadcastMessage("|cFFADD8E6[PvP System]: |cff00ffff"..player:GetName().." |cFFFFFF00he's on a murder streak with "..ARENAS[player:GetName()].ARENASstreak.." ARENASs")
				v:SendAreaTriggerMessage(" |cFFFFFF00"..player:GetName().." is on a ARENAS Streak")
				v:SendBroadcastMessage("|cffff0000"..player:GetName().."|cffffff00 on ARENAS |cff00ffff"..victim:GetName().." |cffffff00in battle.")
				v:SendAreaTriggerMessage("   |TInterface\\icons\\Achievement_Garrison_Invasion:20|t |cffff0000"..player:GetName().." |cffffff00 has a Double ARENAS  |TInterface\\icons\\Achievement_Garrison_Invasion:20|t")
			end	
		end
		
			if (ARENAS[player:GetName()].ARENASstreak == 4) then
					player:AddItem(ARENAS.Token1, ARENAS.TokenThree) -- aqui da el token y la cantidad
					player:ModifyHonorPoints(900) -- aqui es para dar honor si mata a dos personas, tu le modificas cuanto honor quieres dar
					player:SendBroadcastMessage("|cff008080Announcer: |cffff8080Has ganado un botín +500 de Honor") -- mensaje que le saldra cuando mate a dos jugadores
					
				local plrs = GetPlayersInWorld() 
				for k, v in pairs(plrs) do
				-- todos estos son mejores, solo es para que se vea bonito y todos los vean...
				v:SendBroadcastMessage("|cFFADD8E6[PvP System]: |cff00ffff"..player:GetName().." |cFFFFFF00he's on a murder streak with "..ARENAS[player:GetName()].ARENASstreak.." ARENASs")
				v:SendAreaTriggerMessage(" |cFFFFFF00"..player:GetName().." is on a ARENAS Streak")
				v:SendBroadcastMessage("|cffff0000"..player:GetName().."|cffffff00 on ARENAS |cff00ffff"..victim:GetName().." |cffffff00in battle.")
				v:SendAreaTriggerMessage("   |TInterface\\icons\\Achievement_Garrison_Invasion:20|t |cffff0000"..player:GetName().." |cffffff00 has a Double ARENAS  |TInterface\\icons\\Achievement_Garrison_Invasion:20|t")
			end	
		end
			
				if (ARENAS[player:GetName()].ARENASstreak == 5) then
					player:AddItem(ARENAS.Token1, ARENAS.TokenThree) -- aqui da el token y la cantidad
					player:ModifyHonorPoints(1200) -- aqui es para dar honor si mata a dos personas, tu le modificas cuanto honor quieres dar
					player:SendBroadcastMessage("|cff008080Announcer: |cffff8080Has ganado un botín +500 de Honor") -- mensaje que le saldra cuando mate a dos jugadores
					
				local plrs = GetPlayersInWorld() 
				for k, v in pairs(plrs) do
				-- todos estos son mejores, solo es para que se vea bonito y todos los vean...
				v:SendBroadcastMessage("|cFFADD8E6[PvP System]: |cff00ffff"..player:GetName().." |cFFFFFF00he's on a murder streak with "..ARENAS[player:GetName()].ARENASstreak.." ARENASs")
				v:SendAreaTriggerMessage(" |cFFFFFF00"..player:GetName().." is on a ARENAS Streak")
				v:SendBroadcastMessage("|cffff0000"..player:GetName().."|cffffff00 on ARENAS |cff00ffff"..victim:GetName().." |cffffff00in battle.")
				v:SendAreaTriggerMessage("   |TInterface\\icons\\Achievement_Garrison_Invasion:20|t |cffff0000"..player:GetName().." |cffffff00 has a Double ARENAS  |TInterface\\icons\\Achievement_Garrison_Invasion:20|t")
			end	
		end
		
		---------------------------------------------------------------------------------------------------------
		
		else
			
			victim:SendBroadcastMessage("Has sido asesinado por: |cFF90EE90"..player:GetName().."")
		end
	end
end	

end

function ARENAS.PlayerCheck(player, victim)
	if (ARENAS[player:GetName()].target == victim:GetName()) then
		ARENAS[player:GetName()].ARENAScount = ARENAS[player:GetName()].ARENAScount + 1
		if (ARENAS[player:GetName()].ARENAScount >= ARENAS.Count) then
			return false
		else
			return true
		end	
	else
		ARENAS[player:GetName()].target = victim:GetName()
		ARENAS[player:GetName()].ARENAScount = 1
		return true
	end
end	

RegisterPlayerEvent(6, ARENAS.OnARENASPlayer111)	