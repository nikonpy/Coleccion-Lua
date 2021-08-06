

-- Scripts made Mj Levy Ackerman.

-- Estos son iconos de las razas

local Races = {
	[1]  = "human",
	[2]  = "orc",
	[3]  = "dwarf",
	[4]  = "nightelf",
	[5]  = "undead",
	[6]  = "tauren",
	[7]  = "gnome",
	[8]  = "troll",
	[9]  = "",
	[10] = "bloodelf",
	[11] = "draenei",
}

-- estos son iconos para saber si es hombre o mujer
local Genders = {
	[0] = "male",
	[1] = "female",
}

-- estos son iconos de clases ...
local Classes = {
	[1]  = "inv_sword_27",
	[2]  = "ability_thunderbolt",
	[3]  = "inv_weapon_bow_07",
	[4]  = "inv_throwingknife_04",
	[5]  = "inv_staff_30",
	[6]  = "spell_deathknight_classicon",
	[7]  = "inv_jewelry_talisman_04",
	[8]  = "inv_staff_13",
	[9]  = "spell_nature_faeriefire",
	[10] = "",
	[11] = "inv_misc_monsterclaw_04",
}


-- Complemento de los iconos y su orden para su respectiva clase y raza

local function getIcons(player)
	local stringIcons = "|TInterface\\icons\\"..Classes[player:GetClass()]..":15|t".."|TInterface\\icons\\Achievement_character_"..Races[player:GetRace()].."_"..Genders[player:GetGender()]..":15|t"
	return stringIcons
end

local function OnLogin11(_, player)
	local icons = getIcons(player)

	if player:GetGMRank() < 1 then -- Condicional para que solo sea para players ya que no queremos que se anuncie tambien para los gms
	SendWorldMessage("|cff3BBFEA[ NOMBRE DE TU SERVIDOR ] : |cffEBFF22Jugador |cff52F539"..player:GetName().."  "..icons.." |cffEBFF22se ha conectado.") -- mensaje que saldra cuando se conecte un jugador
	
	end
end 
RegisterPlayerEvent(3, OnLogin11) -- Registro del evento