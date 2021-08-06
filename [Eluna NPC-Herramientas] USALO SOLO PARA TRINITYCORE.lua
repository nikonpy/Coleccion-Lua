local npcid = 190018
 
function morph_gossip(unit, player, creature)
	
	player:GossipMenuAddItem(0, "| 1. BUFFS|r", 0, 1)
	player:GossipMenuAddItem(0, "BUFFS FORTUNE|r", 0, 9)
	player:GossipMenuAddItem(0, "3. RESTART HP/POWER|r", 0, 2)
	player:GossipMenuAddItem(0, "4. REMOVE RESURRECTION|r", 0, 3)
	player:GossipMenuAddItem(0, "RESET COMBAT|r", 0, 4)
	player:GossipMenuAddItem(0, "6. RESET COOLDOWN|r", 0, 5)
	player:GossipMenuAddItem(0, "7. RESET TALENTS|r", 0, 6)
	player:GossipMenuAddItem(0, "8. RESET INSTANCES|r", 0, 7)
	player:GossipMenuAddItem(0, "9. REPAIR ITEMS|r", 0, 8)
    player:GossipMenuAddItem(0, "10. BYE - CYA|r", 0, 999)

    player:GossipSendMenu(1, creature)
end


function morph_select(event, player, creature, sender, intid)
    if (intid == 1) then -- Buffs
        player:AddAura(26035, player)
        player:AddAura(16609, player)
        player:AddAura(22888, player)
        player:AddAura(57100, player)
		player:AddAura(35685, player) --- Terapia Electro rayos
        player:GossipComplete()
    end
   
    if (intid == 2) then -- Heal
        player:SetHealth(player:GetMaxHealth())
        player:SetPower(player:GetMaxPower(0), 0)
		
        	
        player:GossipComplete()
    end
   
    if (intid == 3) then -- Remove Sickness
        player:RemoveAura(15007)
        player:GossipComplete()
    end
	
	if (intid == 4) then -- Reset Combat
        player:ClearInCombat()
        player:GossipComplete()
    end
	
	if (intid == 5) then -- Reset Cooldown
        player:ResetAllCooldowns()
        player:GossipComplete()
    end
	
	if (intid == 6) then -- Reset Talents
        player:ResetTalents(true)
        player:GossipComplete()
    end
	
	if (intid == 7) then -- Reset Instances
        player:UnbindAllInstances()
        player:GossipComplete()
    end
	
	if (intid == 8) then -- Repair Itens
        player:DurabilityRepairAll(false)
        player:GossipComplete()
    end


 	if (intid == 9) then -- Sayge
        player:AddAura(23735, player)
        player:AddAura(23736, player)
        player:AddAura(23737, player)
        player:AddAura(23738, player)
        player:AddAura(23768, player)
        player:AddAura(23769, player)
        player:GossipComplete()
    end

	
   
    if (intid == 999) then -- Nevermind
        player:GossipComplete()
    end
end
 
RegisterCreatureGossipEvent(npcid, 1, morph_gossip)
RegisterCreatureGossipEvent(npcid, 2, morph_select)