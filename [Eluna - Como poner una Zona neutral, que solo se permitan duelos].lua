local ZoneIDs = {
    45, -- Estos son ejemplos aqui pondras las Zonas, recuerda siempre poner una "," al final de cada numero.
	440,
}

local MapIDs = {
	0, -- Aqui pondras la ID del Map
	1,
}
-- Recuerda que para ver estas ID de Zonas o ID de Maps solo usa el comando .gps



local function Sanctuaries(event, player, newZone, newArea)
    for _,v in pairs (ZoneIDs) do
        if newZone == v then
            player:SetSanctuary( true ) -- Coloca la Zona neutral
        end
    end

    for _,v in pairs (MapIDs) do
        if player:GetMap():GetMapId() == v then
            player:SetSanctuary( true ) -- Coloca el Map neutral
        end
    end
end
RegisterPlayerEvent(27, Sanctuaries)