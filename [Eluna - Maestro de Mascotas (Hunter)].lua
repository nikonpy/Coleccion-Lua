
-- Made By Mj Levy Ackerman

local Beastmaster = {
    entry = ID_NPC, -- PONER LA ID DE TU NPC
    maxObj = 13, 
}

function Beastmaster.OnHello(event, player, unit)
    if(player:GetClass() == 3) then
        if(player:HasSpell(1515)) then
            Beastmaster.GenerateMenu(1, player, unit);
        else
            player:SendBroadcastMessage("[Maestro de Mascotas]: You are not able to tame pets.")
        end
    else
        player:SendBroadcastMessage("[Maestro de Mascotas]: Only Hunters can use this service!")
    end
end

function Beastmaster.OnSelect(event, player, unit, sender, intid, code)

    if(intid == 0) then
        Beastmaster.GenerateMenu(sender, player, unit);
    elseif(intid == 1) then
        local pet = PerformIngameSpawn(1, sender, unit:GetMapId(), unit:GetInstanceId(), unit:GetX(), unit:GetY(), unit:GetZ(), unit:GetO(), false, 5000)
        pet:SetFaction(35)
        player:CastSpell(pet, 2650, true)
        player:GossipComplete()
    end
end

function Beastmaster.GenerateMenu(id, player, unit)
    local low = ((Beastmaster.maxObj*id)-Beastmaster.maxObj+1)
    local high = Beastmaster.maxObj*id
    

    for i = low, high do
        local t = Beastmaster["Cache"][i]
        

        if(player:GetLevel() >= t["level"]) then
            player:GossipMenuAddItem(2, "Level: "..t["level"].." - "..t["name"], t["entry"], 1)
        end
    end
    

    if(id ~= 1) then
        player:GossipMenuAddItem(4, "<-- Previous", id-1, 0)
    end
    

    if(Beastmaster["Cache"][high+1]) and (player:GetLevel() >= Beastmaster["Cache"][high+1]["level"]) then
        player:GossipMenuAddItem(4, "Next -->", id+1, 0)
    end
    
    player:GossipSendMenu(1, unit)
end

function Beastmaster.LoadCache()
    Beastmaster["Cache"] = {}
    local i = 1;
    local Query;
    
    if(GetCoreName() == "MaNGOS") then
        Query = WorldDBQuery("SELECT Entry, Name, MaxLevel FROM creature_template WHERE CreatureType=1 AND CreatureTypeFlags&1 <> 0 AND Family!=0 ORDER BY MaxLevel ASC;")
    elseif(GetCoreName() == "TrinityCore") then
        Query = WorldDBQuery("SELECT Entry, Name, MaxLevel FROM creature_template WHERE Type=1 AND Type_Flags&1 <> 0 AND Family!=0 ORDER BY MaxLevel ASC;")
    end
    
    if(Query) then
        repeat
            Beastmaster["Cache"][i] = {
                entry = Query:GetUInt32(0),
                name = Query:GetString(1),
                level = Query:GetUInt32(2)
            };
            i = i+1
        until not Query:NextRow()
        print("[Maestro de Mascotas]: Cache initialized. Loaded "..Query:GetRowCount().." tameable beasts.")
    else
        print("[Maestro de Mascotas]: Cache initialized. No results found.")
    end
end

Beastmaster.LoadCache()
RegisterCreatureGossipEvent(Beastmaster.entry, 1, Beastmaster.OnHello)
RegisterCreatureGossipEvent(Beastmaster.entry, 2, Beastmaster.OnSelect)