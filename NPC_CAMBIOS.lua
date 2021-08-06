
-- Levy Ackerman <3

local NPC_ENTRY = "ID DE TU NPC" -- recuerda que va sin las comillas
 

local ITEM_3_ENTRY = 107068 -- Token Underworld 20874- Spell_Fire_Fire
local ITEM_7_ENTRY = 999201 --- 999201 battleground - inv_legendary_sigilofpower

local ITEM_2_COUNT = 500
local ITEM_12_COUNT = 1000

local ITEM_3_NAME = GetItemLink(ITEM_3_ENTRY)
local ITEM_7_NAME = GetItemLink(ITEM_7_ENTRY)

 
local function ItemExChangeOnHello(event, player, unit)
    player:GossipMenuAddItem(1, "*[1000]  |Tinterface/Icons/Spell_Fire_Fire:26|t x [500]  |Tinterface/Icons/inv_legendary_sigilofpower:26|t", 0, 1)
    player:GossipMenuAddItem(0, "Salir..", 0, 999)
    player:GossipSendMenu(1, unit)
end
 
local function ItemExChangeOnSelect(event, player, unit, sender, intid, code)
    if (intid == 1) then
        if (player:HasItem(ITEM_3_ENTRY, ITEM_12_COUNT)) then
            player:RemoveItem(ITEM_3_ENTRY, ITEM_12_COUNT)
            player:AddItem(ITEM_7_ENTRY, ITEM_2_COUNT)
        else
			player:SendBroadcastMessage("|CFF7BBEF7 Tu necesitas "..ITEM_3_NAME.." x "..ITEM_12_COUNT.."|r")	
		end
		
    elseif (intid == 999) then
        player:GossipComplete()
    end
	
       
end
 
RegisterCreatureGossipEvent(NPC_ENTRY, 1, ItemExChangeOnHello)
RegisterCreatureGossipEvent(NPC_ENTRY, 2, ItemExChangeOnSelect)