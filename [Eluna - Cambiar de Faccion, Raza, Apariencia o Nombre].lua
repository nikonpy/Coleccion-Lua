

local npcid = ID de tu NPC;      
local fac_token = PONE TU ID DE TU TOKEN;   
local race_token = PONE TU ID DE TU TOKEN;  
local name_token = PONE TU ID DE TU TOKEN;  
local app_token = PONE TU ID DE TU TOKEN; 

local count = 1 -- esto es variable de cantidad  

local function fr_gossip (unit, player, creature)
	player:GossipMenuAddItem(0, "|TInterface/ICONS/Achievement_character_human_female:35:35|tChange My Race", 0, 0)
	player:GossipMenuAddItem(0, "|TInterface/ICONS/Achievement_character_orc_male:35:35|tChange My Faction", 0, 1)
	player:GossipMenuAddItem(0, "|TInterface/ICONS/achievement_character_bloodelf_female:35:35|tChange My Appearance", 0, 2)
	player:GossipMenuAddItem(0, "|TInterface/ICONS/Achievement_character_gnome_male:35:35|tChange My Name", 0, 3)
	player:GossipSendMenu(1, creature)
end

local function fr_selection (event,player,creature,sender,intid)

-- Aqui es para cambiar de raza
	if intid == 0 then 
		if player:HasItem(race_token, count) == true then -- condicion: Si el jugador tiene el item "race token" podra cambiar su race
			player:SetAtLoginFlag(128) -- este 128 significa el "flag" para poder cambiar su raza, esto no se lo cambies pues
			player:RemoveItem(race_token, 1) -- Aqui te va a quitar el "race token" y el "1" significa la cantidad que te quitara osea te quitara = 1
			player:SendAreaTriggerMessage("Relogea para cambiar tu raza.") -- mensaje que le saldra, tendra que relogear para cambiar su raza
			player:GossipComplete() -- con esto cierras el menu
		else -- esto significa "de lo contrario" osea, si no tiene el item le saldra este mensaje que necesita 1 race token
		player:SendAreaTriggerMessage("Tu necesitas 1 "..GetItemLink(race_token)) -- "GetItemLink()" eso es para que te linkee el item 
		end
	end

	
	if intid == 1 then
		if player:HasItem(fac_token, count) == true then
			player:SetAtLoginFlag(64)
			player:RemoveItem(fac_token, 1)
			player:SendAreaTriggerMessage("Relog to change your Faction.")
			player:GossipComplete()	
		else
		player:SendAreaTriggerMessage("Tu necesitas 1 "..GetItemLink(fac_token))
		end
	end
	
	
	if intid == 2 then
		if player:HasItem(app_token, count) == true then
			player:SetAtLoginFlag(8)
			player:RemoveItem(app_token, 1)
			player:SendAreaTriggerMessage("Relog to change your Appearance.")
			player:GossipComplete()	
		else
		player:SendAreaTriggerMessage("Tu necesitas 1 "..GetItemLink(app_token))
		end
	end
	if intid == 3 then
		if player:HasItem(name_token, count) == true then
			player:SetAtLoginFlag(1)
			player:RemoveItem(name_token, 1)
			player:SendAreaTriggerMessage("Relog to change your Name.")
			player:GossipComplete()
		else
		player:SendAreaTriggerMessage("Tu necesitas 1 "..GetItemLink(name_token))
		end
	end
	
	
end


RegisterCreatureGossipEvent(npcid, 1, fr_gossip)
RegisterCreatureGossipEvent(npcid, 2, fr_selection)