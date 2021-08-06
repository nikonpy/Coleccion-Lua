-- killer = es el jugador que esta matando.
-- killed = es el jugador que esta muerto.


--SendWorldMessage = mensajes que le saldra a todos los jugadores conectados
	
-- Esto funciona, por ejemplo: Si tu matas a alguien en algun lugar, saldra algo como: [Announce PvP]: Jorge Ha matado a Jesus en Batalla.



local function pvp (event, killer, killed, player)
	if (killer:GetGUIDLow() == killed:GetGUIDLow()) then return false end
	SendWorldMessage("|TInterface\\icons\\achievement_bg_killxenemies_generalsroom:15|t [Announce PVP]: |cff00ffff"..killer:GetName().."|cffffff00 Ha Matado a |cffff0000"..killed:GetName().."|cffffff00 en Batalla |TInterface\\icons\\achievement_bg_ab_defendflags:15|t")
end

RegisterPlayerEvent(6, pvp)

-- Ahora bien si tu quieres que este mensaje solo salga en BG o en Arenas solo es agregarle el condicional este:
-- player:IsInBattleground() == true 

local function pvp_bg (event, killer, killed, player)
	if(player:InBattleground() == true)
	if (killer:GetGUIDLow() == killed:GetGUIDLow()) then return false end
	SendWorldMessage("|TInterface\\icons\\achievement_bg_killxenemies_generalsroom:15|t [Announce PVP]: |cff00ffff"..killer:GetName().."|cffffff00 Ha Matado a |cffff0000"..killed:GetName().."|cffffff00 en Batalla |TInterface\\icons\\achievement_bg_ab_defendflags:15|t")
	end
end

RegisterPlayerEvent(6, pvp_bg)


-- y en Arenas: 
-- player:IsInArena() === true

local function pvp_arena (event, killer, killed, player)
	if(player:InArena() == true)
	if (killer:GetGUIDLow() == killed:GetGUIDLow()) then return false end
	SendWorldMessage("|TInterface\\icons\\achievement_bg_killxenemies_generalsroom:15|t [Announce PVP]: |cff00ffff"..killer:GetName().."|cffffff00 Ha Matado a |cffff0000"..killed:GetName().."|cffffff00 en Batalla |TInterface\\icons\\achievement_bg_ab_defendflags:15|t")
	end
end

RegisterPlayerEvent(6, pvp_arena)