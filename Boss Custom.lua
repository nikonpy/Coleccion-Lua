
local CreatureEntryID = "ID DE TU NPC" -- cuando pongas la ID recuerda borrar las comillas
local AbbendisOffenseSpells = {58127,6713,3148,11977,12555,39070,51875,23262}
local AbbendisDefenseSpells = {5242, 38664}
local Strings = {
    phase0 = "Ahora si se viene lo chido...", -- Cuando la creatura tenga la vida entre 81% a 100% dira este texto
    phase1 = "Te ve deshecho...",  -- Cuando la creatura tenga la vida > 80% dira este texto
    phase2 = "No tengo permitido morir", -- Cuando la creatura tenga la vida > 60% dira este texto
    phase3 = "Ahora conoceras el autentico poder!", -- Cuando la creatura tenga la vida > 40% dira este texto
    phase4 = "Tambien quiero mucho PODERRRR", -- Cuando la creatura tenga la vida > 21% dira este texto
    phase5 = "Nos vemos en otra vida ...", -- Cuando la creatura tenga la vida < 20% dira este texto
}

local function AbbendisPhaseLoop(eventId, delay, calls, creature) --looping phase
        local number = math.random(8) -- para lanzar hechizos aleatorios - el numero (8) es la cantidad de hechizos que hay.
		local numberdefense = math.random(2) -- para lanzar hechizos - el numero (2) es la cantidad de hechizos que hay.
    if(creature:GetHealthPct() > 80 and creature:GetHealthPct() < 95) then
        creature:SendUnitYell( Strings.phase1, 0 ) 
        creature:CastSpell( creature:GetVictim(), AbbendisOffenseSpells[number], false)
		creature:CastSpell( creature, AbbendisDefenseSpells[numberdefense], false)
    elseif (creature:GetHealthPct() > 60) then
		creature:SendUnitYell( Strings.phase2, 0 ) 
        creature:CastSpell( creature:GetVictim(), AbbendisOffenseSpells[number], false)
        creature:CastSpell( creature:GetVictim(), AbbendisOffenseSpells[number], false)
		creature:CastSpell( creature, AbbendisDefenseSpells[numberdefense], false)
    elseif (creature:GetHealthPct() > 40) then
		creature:SendUnitYell( Strings.phase3, 0 ) 
        creature:CastSpell( creature:GetVictim(), AbbendisOffenseSpells[number], false)
        creature:CastSpell( creature:GetVictim(), AbbendisOffenseSpells[number], false)
        creature:CastSpell( creature:GetVictim(), AbbendisOffenseSpells[number], false)
		creature:CastSpell( creature, AbbendisDefenseSpells[numberdefense], false)
    elseif (creature:GetHealthPct() > 20) then
		creature:SendUnitYell( Strings.phase4, 0 ) 
        creature:CastSpell( creature:GetVictim(), AbbendisOffenseSpells[number], false)
        creature:CastSpell( creature:GetVictim(), AbbendisOffenseSpells[number], false)
        creature:CastSpell( creature:GetVictim(), AbbendisOffenseSpells[number], false)
		creature:CastSpell( creature:GetVictim(), AbbendisOffenseSpells[number], false)
		creature:CastSpell( creature, AbbendisDefenseSpells[numberdefense], false)
    else
		creature:SendUnitYell( Strings.phase5, 0 ) 
        creature:CastSpell( creature:GetVictim(), AbbendisOffenseSpells[number], false)
        creature:CastSpell( creature:GetVictim(), AbbendisOffenseSpells[number], false)
        creature:CastSpell( creature:GetVictim(), AbbendisOffenseSpells[number], false)
        creature:CastSpell( creature:GetVictim(), AbbendisOffenseSpells[number], false)
        creature:CastSpell( creature:GetVictim(), AbbendisOffenseSpells[number], false)
		creature:CastSpell( creature, AbbendisDefenseSpells[numberdefense], false)
    end
    creature:RegisterEvent(AbbendisPhaseLoop, 5000, 1)
end

function AbbendisPhase0(event, creature) 
	creature:SendUnitYell( Strings.phase5, 0 ) 
	creature:RegisterEvent(AbbendisPhaseLoop, 1000, 1)
end



local function OnEnterCombatAbbendis(event, creature, target)
    AbbendisPhase0(event, creature) 
end
RegisterCreatureEvent(CreatureEntryID, 1, OnEnterCombatAbbendis)

local function OnLeaveCombatAbbendis(event, creature)
    creature:RemoveEvents()
end
RegisterCreatureEvent(CreatureEntryID, 2, OnLeaveCombatAbbendis)

local function OnDiedAbbendis(event, creature, killer)
    if(killer:GetObjectType() == "Player") then
        killer:SendBroadcastMessage("Felicitaciones has conseguido derrotarme |cff00ff00" ..creature:GetName().."|r!")
    end
    creature:RemoveEvents()
end
RegisterCreatureEvent(CreatureEntryID, 4, OnDiedAbbendis)
