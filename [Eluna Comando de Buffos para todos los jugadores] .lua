local Comm = {}


-- Made Mj Levy Ackerman
-- Me reservaré explicar este, pero esta 100% funcional.

function Comando.Lista(accid, whitelist)

    for _, v in pairs(whitelist) do
        if(v == accid) then
            return true;
        end
    end
    
    return false;
end

function Comando.Tipo(inputstr)

	local t = {}
	local e, i = 0, 1
	
	while true do
		local b = e+1
		b = inputstr:find("%S", b)
		
		if b == nil then
			break
		end
		
		if inputstr:sub(b,b) == "'" then
			e = inputstr:find("'", b+1)
			b = b+1
		elseif inputstr:sub(b,b) == '"' then
			e = inputstr:find('"', b+1)
			b = b+1
		else
			e = inputstr:find("%s", b+1)
		end
		
		if e == nil then 
			e = #inputstr+1
		end

		t[i] = inputstr:sub(b,e-1)
		i = i + 1
	end
	
	return t
end



function Comando.Buffos(comTable, player)

-- funcion para ponerle buff a todos los players que esten conectados, aqui se los puedes cambiara tu gusto.

    for _, v in pairs(GetPlayersInWorld()) do
        v:CastSpell(v, 16609, true)
        v:CastSpell(v, 24425, true)
        v:CastSpell(v, 34410, true)
		v:CastSpell(v, 40570, true) 
		v:CastSpell(v, 26393, true)
		v:CastSpell(v, 16609, true)
		v:CastSpell(v, 15366, true)
		v:CastSpell(v, 22888, true)
		v:CastSpell(v, 57100, true)
		v:CastSpell(v, 43820, true)
		v:CastSpell(v, 43822, true)
		v:CastSpell(v, 43816, true)
		v:CastSpell(v, 43818, true)
		v:CastSpell(v, 26035, true)
		v:CastSpell(v, 70242, true)
		v:CastSpell(v, 70235, true)
		v:CastSpell(v, 70244, true)
		v:CastSpell(v, 30090, true)
		v:CastSpell(v, 2825, true)
		v:CastSpell(v, 32182, true)

		

    end
			SendWorldMessage("El administrador les ofrece ayuda con sus buffos. Alabad al Dios todopoderoso.")

end

function Comando.Mundo_test(comTable, player)
	for _, v in pairs(comTable) do

		if(player) then
			player:SendBroadcastMessage(v)
		end
		print(v)
	end
end


function Comando.mundo(event, player, command)
    local commandTable = Comando.Tipo(command)
	
    if(Comm["register"][commandTable[1]]) then
		if(player) then
			local security, whitelist = Comm["register"][commandTable[1]][2], Comando.Lista(player:GetAccountId(), Comm["register"][commandTable[1]][3])
        
			if(player:GetGMRank() >= security or whitelist == true) then
				Comm["register"][commandTable[1]][1](commandTable, player)
			else
				player:SendBroadcastMessage("Lo siento no tienes acceso a este comando.")
			end
		else 
			if(Comm["register"][commandTable[1]][2] >= 4) then
				Comm["register"][commandTable[1]][1](commandTable, nil)
			end
		end
		
        return false;
    end
end


Comm.register = {

    ["worldbuff"] = {Comando.Buffos, 1, {}}, --> Donde dice "worldbuff" ese es el comando que tengo, pero le puedes poner cualquier otro.
	["print"] = {Comando.Mundo_test, 0, {}},
}

RegisterPlayerEvent(42, Comando.mundo)

