local ZoneIDs = {
    3518, -- ID DE LA ZONA
}

local MapIDs = {
    530, -- ID DEL MAP
	
}
-- CON EL COMANDO .gps PODRAS VER ESTAS ZONAS Y MAPS

local function FFA(event, player, newZone, newArea)
    for _,v in pairs (ZoneIDs) do
        if newZone == v then
		
		--- Estos metodos son para poner la zona PvP
            player:SetPvPDeath( true ) 
			player:SetPvP( true )
			player:SetFFA( true )
        end
    end

    for _,v in pairs (MapIDs) do
        if player:GetMap():GetMapId() == v then
		--- Estos metodos son para poner los maps PvP
            player:SetPvPDeath( true )
			player:SetPvP( true)
			player:SetFFA ( true )
        end
    end
end
RegisterPlayerEvent(27, FFA)