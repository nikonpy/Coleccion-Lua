

local function GMLogin (event, player)
	
    if player:GetGMRank() => 1 then -- Esto es para verificar que es rango igual o mayor a 1, si es pues saldra el mensaje (es decir solo para gms)
		SendWorldMessage(""..player:GetName().."El gm mas chingon de todo entro.") -- este mensaje le sadra a todo el mundo
	end
end

local function GMLogout (event, player)

    if player:GetGMRank() => 1 then
		SendWorldMessage(""..player:GetName().."El gm mas chingon se fue.") -- este mensaje le sadra a todo el mundo
    end
end

RegisterPlayerEvent(3, GMLogin)
RegisterPlayerEvent(4, GMLogout)