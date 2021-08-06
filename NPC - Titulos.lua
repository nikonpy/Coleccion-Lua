-- Levy Ackerman <3

local NPC = "ID del NPC" -- aqui pones la ID de tu NPC, recuerda quitar las comillas.
local TOKEN = 222 -- Aqui vas a poner la ID de un token cualquiera
local ITEM_1_COUNT = 1 -- esto es la cantidad que pedira para el titulo


 
function MENU(unit, player, creature)
player:GossipMenuAddItem(8, "Titulo --> Master Sergeant", 0, 1)
player:GossipMenuAddItem(8, "Titulo --> Commander)", 0, 2)
player:GossipMenuAddItem(5, "[Salir]", 0, 999)
player:GossipSendMenu(1, creature)
end





function SELECCION(event, player, creature, sender, intid, code)
 if (intid == 1) then
        if (player:HasItem(TOKEN, ITEM_1_COUNT)) then -- aqui verifica que tengas el item y la cantidad
            player:RemoveItem(TOKEN, ITEM_1_COUNT) -- aqui te quita el item y la cantidad
            player:SetKnowmTitle(4) -- aqui te da el titulo
        else
			player:SendAreaTriggerMessage("Tu necesitas 1 "..GetItemLink(TOKEN))	
		end
 
  if (intid == 2) then
        if (player:HasItem(TOKEN, ITEM_1_COUNT)) then
            player:RemoveItem(TOKEN, ITEM_1_COUNT)
            player:SetKnowmTitle(11)
        else
			player:SendAreaTriggerMessage("Tu necesitas 1 "..GetItemLink(TOKEN))	
		end

  if(intid == 999) then
			player:GossipComplete() 
			end
		end
	end
end
 

RegisterCreatureGossipEvent(NPC, 1, MENU)
RegisterCreatureGossipEvent(NPC, 2, SELECCION)
