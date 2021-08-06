-- Thanks Kusa - Edit by Mj Levy Ackerman

local function Muerte_Boss(event, killer, killed)
    if (killer:IsGM() == true) then -- Condicional: Si el que mata es GM -->
            gmicon = " |Tinterface\\ChatFrame\\UI-ChatIcon-Blizz.blp:12:24:1:-1|t" -- Este es el icono del gm el que dice "Blizz"
    else
            gmicon = "" -- Aqui no hay iconos (F)
    end
	
	if(killed:IsWorldBoss()) then 	-- Si al que mato es un World Boss o un Boss de una instancia o banda
				-- Saldra este mensaje para todos, que dira: [System PvE] : El jugador "Jorge" a matado al Boss "Rey Exanime"
		SendWorldMessage("[System PVE]"..gmicon.." [ "..player:GetName().." ] ha matado al Boss ["..killed:GetName().."]")
		-- Ese mensaje lo puedes decorar con iconos, colores y demás cosas bonitas.
	end
end
 
RegisterPlayerEvent(7, Muerte_Boss) -- Registro del evento


-- Cualquiera duda que no entiendas no te de miedo preguntar con mucho gusto te ayudaré se lo frustante que es aprender solo todo esto.