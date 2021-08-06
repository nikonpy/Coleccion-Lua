Muerte = {}



Muerte.Token = "AQUI PON LA ID DE TU TOKEN" -- recuerda que va sin comillas	

Muerte.Count = 1			
						
Muerte.TokenOne = 1		
Muerte.TokenTwo = 2		
Muerte.TokenThree = 3	
Muerte.TokenFour = 4	
Muerte.TokenFive = 5 		
Muerte.TokenSix = 6		
Muerte.TokenSeven = 7
Muerte.TokenEight = 8	
Muerte.TokenNine = 9	
Muerte.TokenTen = 10 		
Muerte.TokenEleven = 11		




function Muerte.OnMuertePlayer111(event, player, victim)
if (player:InBattleground() == true) then -- si el player esta en BG entonces funciona los anuncios.
	if (Muerte[player:GetName()] == nil) then
		Muerte[player:GetName()] = {}
		Muerte[player:GetName()].Muertestreak = 1
		Muerte[victim:GetName()] = {}
		Muerte[victim:GetName()].Muertestreak = 0
		player:SendBroadcastMessage("Has matado a: |cFF90EE90"..victim:GetName().."")
		player:SendBroadcastMessage("Racha: |cFF90EE90"..Muerte[player:GetName()].Muertestreak.."")
		victim:SendBroadcastMessage("Has sido asesinado por: |cFF90EE90"..player:GetName().."")
		player:AddItem(Muerte.Token1, Muerte.TokenTwo) -- aqui da el token y la cantidad

	elseif (Muerte[player:GetName()].Muertestreak == nil) then
		Muerte[player:GetName()].Muertestreak = 1
		Muerte[victim:GetName()] = {}
		Muerte[victim:GetName()].Muertestreak = 0
		player:SendBroadcastMessage("Has matado a: |cFF90EE90"..victim:GetName().."")
		player:SendBroadcastMessage("Racha: |cFF90EE90"..Muerte[player:GetName()].Muertestreak.."")
		victim:SendBroadcastMessage("Has sido asesinado por: |cFF90EE90"..player:GetName().."")
		player:AddItem(Muerte.Token1, Muerte.TokenTwo) -- aqui da el token y la cantidad
	else
		if ((Muerte.PlayerCheck(player, victim)) == true) then
			Muerte[player:GetName()].Muertestreak = Muerte[player:GetName()].Muertestreak + 1
			Muerte[victim:GetName()] = {}
			Muerte[victim:GetName()].Muertestreak = 0
			player:SendBroadcastMessage("Has matado a: |cFF90EE90"..victim:GetName().."")
			player:SendBroadcastMessage("Racha: |cFF90EE90"..Muerte[player:GetName()].Muertestreak.."")
			victim:SendBroadcastMessage("Has sido asesinado por: |cFF90EE90"..player:GetName().."")
			player:AddItem(Muerte.Token1, Muerte.TokenTwo) -- aqui da el token y la cantidad
			if (Muerte[player:GetName()].Muertestreak > 0) then
				if (Muerte[player:GetName()].Muertestreak < 10) then
				end
			end	
			
			
			if (Muerte[player:GetName()].Muertestreak == 2) then
					player:AddItem(Muerte.Token1, Muerte.TokenTwo) -- aqui da el token y la cantidad
					player:ModifyHonorPoints(500) -- aqui es para dar honor si mata a dos personas, tu le modificas cuanto honor quieres dar
					player:SendBroadcastMessage("|cff008080Announcer: |cffff8080Has ganado un botín +500 de Honor") -- mensaje que le saldra cuando mate a dos jugadores
					
				local plrs = GetPlayersInWorld() 
				for k, v in pairs(plrs) do
				-- todos estos son mejores, solo es para que se vea bonito y todos los vean...
				v:SendBroadcastMessage("|cFFADD8E6[PvP System]: |cff00ffff"..player:GetName().." |cFFFFFF00he's on a murder streak with "..Muerte[player:GetName()].Muertestreak.." muertes")
				v:SendAreaTriggerMessage(" |cFFFFFF00"..player:GetName().." is on a Muerte Streak")
				v:SendBroadcastMessage("|cffff0000"..player:GetName().."|cffffff00 on Muerte |cff00ffff"..victim:GetName().." |cffffff00in battle.")
				v:SendAreaTriggerMessage("   |TInterface\\icons\\Achievement_Garrison_Invasion:20|t |cffff0000"..player:GetName().." |cffffff00 has a Double Muerte  |TInterface\\icons\\Achievement_Garrison_Invasion:20|t")
			end	
		end
		
		    if (Muerte[player:GetName()].Muertestreak == 3) then
					player:AddItem(Muerte.Token1, Muerte.TokenThree) -- aqui da el token y la cantidad
					player:ModifyHonorPoints(700) -- aqui es para dar honor si mata a dos personas, tu le modificas cuanto honor quieres dar
					player:SendBroadcastMessage("|cff008080Announcer: |cffff8080Has ganado un botín +500 de Honor") -- mensaje que le saldra cuando mate a dos jugadores
					
				local plrs = GetPlayersInWorld() 
				for k, v in pairs(plrs) do
				-- todos estos son mejores, solo es para que se vea bonito y todos los vean...
				v:SendBroadcastMessage("|cFFADD8E6[PvP System]: |cff00ffff"..player:GetName().." |cFFFFFF00he's on a murder streak with "..Muerte[player:GetName()].Muertestreak.." muertes")
				v:SendAreaTriggerMessage(" |cFFFFFF00"..player:GetName().." is on a Muerte Streak")
				v:SendBroadcastMessage("|cffff0000"..player:GetName().."|cffffff00 on Muerte |cff00ffff"..victim:GetName().." |cffffff00in battle.")
				v:SendAreaTriggerMessage("   |TInterface\\icons\\Achievement_Garrison_Invasion:20|t |cffff0000"..player:GetName().." |cffffff00 has a Double Muerte  |TInterface\\icons\\Achievement_Garrison_Invasion:20|t")
			end	
		end
		
			if (Muerte[player:GetName()].Muertestreak == 4) then
					player:AddItem(Muerte.Token1, Muerte.TokenThree) -- aqui da el token y la cantidad
					player:ModifyHonorPoints(900) -- aqui es para dar honor si mata a dos personas, tu le modificas cuanto honor quieres dar
					player:SendBroadcastMessage("|cff008080Announcer: |cffff8080Has ganado un botín +500 de Honor") -- mensaje que le saldra cuando mate a dos jugadores
					
				local plrs = GetPlayersInWorld() 
				for k, v in pairs(plrs) do
				-- todos estos son mejores, solo es para que se vea bonito y todos los vean...
				v:SendBroadcastMessage("|cFFADD8E6[PvP System]: |cff00ffff"..player:GetName().." |cFFFFFF00he's on a murder streak with "..Muerte[player:GetName()].Muertestreak.." muertes")
				v:SendAreaTriggerMessage(" |cFFFFFF00"..player:GetName().." is on a Muerte Streak")
				v:SendBroadcastMessage("|cffff0000"..player:GetName().."|cffffff00 on Muerte |cff00ffff"..victim:GetName().." |cffffff00in battle.")
				v:SendAreaTriggerMessage("   |TInterface\\icons\\Achievement_Garrison_Invasion:20|t |cffff0000"..player:GetName().." |cffffff00 has a Double Muerte  |TInterface\\icons\\Achievement_Garrison_Invasion:20|t")
			end	
		end
			
				if (Muerte[player:GetName()].Muertestreak == 5) then
					player:AddItem(Muerte.Token1, Muerte.TokenThree) -- aqui da el token y la cantidad
					player:ModifyHonorPoints(1200) -- aqui es para dar honor si mata a dos personas, tu le modificas cuanto honor quieres dar
					player:SendBroadcastMessage("|cff008080Announcer: |cffff8080Has ganado un botín +500 de Honor") -- mensaje que le saldra cuando mate a dos jugadores
					
				local plrs = GetPlayersInWorld() 
				for k, v in pairs(plrs) do
				-- todos estos son mejores, solo es para que se vea bonito y todos los vean...
				v:SendBroadcastMessage("|cFFADD8E6[PvP System]: |cff00ffff"..player:GetName().." |cFFFFFF00he's on a murder streak with "..Muerte[player:GetName()].Muertestreak.." muertes")
				v:SendAreaTriggerMessage(" |cFFFFFF00"..player:GetName().." is on a Muerte Streak")
				v:SendBroadcastMessage("|cffff0000"..player:GetName().."|cffffff00 on Muerte |cff00ffff"..victim:GetName().." |cffffff00in battle.")
				v:SendAreaTriggerMessage("   |TInterface\\icons\\Achievement_Garrison_Invasion:20|t |cffff0000"..player:GetName().." |cffffff00 has a Double Muerte  |TInterface\\icons\\Achievement_Garrison_Invasion:20|t")
			end	
		end
		
		---------------------------------------------------------------------------------------------------------
		
		else
			
			victim:SendBroadcastMessage("Has sido asesinado por: |cFF90EE90"..player:GetName().."")
		end
	end
end	

end

function Muerte.PlayerCheck(player, victim)
	if (Muerte[player:GetName()].target == victim:GetName()) then
		Muerte[player:GetName()].Muertecount = Muerte[player:GetName()].Muertecount + 1
		if (Muerte[player:GetName()].Muertecount >= Muerte.Count) then
			return false
		else
			return true
		end	
	else
		Muerte[player:GetName()].target = victim:GetName()
		Muerte[player:GetName()].Muertecount = 1
		return true
	end
end	

RegisterPlayerEvent(6, Muerte.OnMuertePlayer111)	