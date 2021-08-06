

-- levy Ackerman <3

local item = "ID del ITEM" -- recuerda quitar las comillas



local area = "AQUI PONE EL AREA QUE DESEAS BLOQUEAR" -- Usa el comando .gps y mira el area de la zona que quieres bloquear y ponlo aqui


local function BLOQUEO(event, player)

if (player:GetAreaId() == area) then -- verifica el area que esta bloqueada

	if (player:HasItem(item) == false) then -- aqui verifica que, si no tiene el item este sera un intruso

player:SendAreaTriggerMessage("|cffff0000Error: > |cffffff00INTRUSO |cffff0000<") -- mensaje que le saldra al intruso :)

-- estos numeros equivalen a: (map, x, y, z)
player:Teleport(0, 50, 50, 50) -- Si el jugador es intruso este sera teletransportado a esta zona. 


		end

	end

end

RegisterPlayerEvent(27, BLOQUEO)