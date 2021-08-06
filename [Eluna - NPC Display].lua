--- Script Lua Engine TrinityCore 3.3.5
--- By Jorge Jaraba
--- Developers & Customizers



local UnitEntry = "ID NPC"



 
function Trainers_Gossip(unit, player, creature)



player:GossipMenuAddItem(8, "[Male Globin]", 0, 1)
player:GossipMenuAddItem(8, "[Female Globin]", 0, 2)
player:GossipMenuAddItem(8, "[Female Blood elf]", 0, 3)
player:GossipMenuAddItem(8, "[Male Blood elf]", 0, 4)
player:GossipMenuAddItem(8, "[Male gnome]", 0, 5)
player:GossipMenuAddItem(8, "[Female gnome]", 0, 6)
player:GossipMenuAddItem(8, "[Female Tauren]", 0, 7)
player:GossipMenuAddItem(8, "[Male Tauren]", 0, 8)
player:GossipMenuAddItem(8, "[Male human]", 0, 9)
player:GossipMenuAddItem(8, "[Female human]", 0, 10)
player:GossipMenuAddItem(8, "[Female dreanei]", 0, 11)
player:GossipMenuAddItem(8, "[Male troll]", 0, 12)
player:GossipMenuAddItem(8, "[Male dwarf]", 0, 13)
player:GossipMenuAddItem(8, "[Female orc]", 0, 15)
player:GossipMenuAddItem(8, "[Male Night elf]", 0, 16)
player:GossipMenuAddItem(8, "[Male Broken]", 0, 17)
player:GossipMenuAddItem(8, "[Male Fel orc]", 0, 18)

player:GossipMenuAddItem(5, "Demorph ++", 0, 14)
player:GossipSendMenu(1, creature)
end





function Menu_Trainers_Select(event, player, creature, sender, intid, code)
if (intid < 11 and intid > 0) then --
        if (player:ModifyMoney(-5000000) == false) then -- Aqui puedes poner la cantidad de oro y si no quieres le puedes borrar el condicional te lo dejare marcado con rayiras al final.
                intid = 0 --
                player:SendBroadcastMessage("You don't have enough gold") --
                player:GossipComplete() --
        end --
end --
 
 
-- Aqui viene la funciones de transformaciones.

-------Morph---------
if(intid == 1) then
player:SetDisplayId(20582)
player:SetScale(1)
player:GossipComplete(player)
end

if(intid == 2) then
player:SetDisplayId(20583)
player:SetScale(1)
player:GossipComplete(player)
end

if(intid == 3) then
player:SetDisplayId(20579)
player:SetScale(1)
player:GossipComplete(player)
end

if(intid == 4) then
player:SetDisplayId(20578)
player:SetScale(1)
player:GossipComplete(player)
end

if(intid == 5) then
player:SetDisplayId(20580)
player:SetScale(1)
player:GossipComplete(player)
end

if(intid == 6) then
player:SetDisplayId(20581)
player:SetScale(1)
player:GossipComplete(player)
end

if(intid == 7) then
player:SetDisplayId(20584)
player:SetScale(1)
player:GossipComplete(player)
end

if(intid == 8) then
player:SetDisplayId(20585)
player:SetScale(1)
player:GossipComplete(player)
end

if(intid == 9) then
player:SetDisplayId(19723)
player:SetScale(1)
player:GossipComplete(player)
end

if(intid == 10) then
player:SetDisplayId(19724)
player:SetScale(1)
player:GossipComplete(player)
end

if(intid == 11) then
player:SetDisplayId(20323)
player:SetScale(1)
player:GossipComplete(player)
end

if(intid == 12) then
player:SetDisplayId(20321)
player:SetScale(1)
player:GossipComplete(player)

end

if(intid == 13) then
player:SetDisplayId(20317)
player:SetScale(1)
player:GossipComplete(player)
end


if (intid == 14) then
player:DeMorph(player, false)
player:SetScale(1)
player:GossipComplete()		
end

if(intid == 15) then
player:SetDisplayId(20316)
player:SetScale(1)
player:GossipComplete(player)
end

if(intid == 16) then
player:SetDisplayId(20318)
player:SetScale(1)
player:GossipComplete(player)
end

if(intid == 17) then
player:SetDisplayId(21105)
player:SetScale(1)
player:GossipComplete(player)
end

if(intid == 18) then
player:SetDisplayId(21267)
player:SetScale(0.85)
player:GossipComplete(player)
end


	
end
 

RegisterCreatureGossipEvent(UnitEntry, 1, Trainers_Gossip)
RegisterCreatureGossipEvent(UnitEntry, 2, Menu_Trainers_Select)
