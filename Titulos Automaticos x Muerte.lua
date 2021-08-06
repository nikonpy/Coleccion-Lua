
-- Levy Ackerman <3

-- Aqui ganas titulos dependiendo de las muertes que hagas o tengas, es decir, para ganar el primer titulo que seria "Private/Scout" 
-- Debes matar 15 jugadores y te lo dara automaticamente, y asi con los demás, te preguntaras como puedo modificarlos pues sencillo
-- como ves hay 3 columnas cierto? .. Si!, bueno ..
-- la primera columna = al orden de lista de los titulos
-- la segunda columna = ID del titulo
-- la tercera columna = Cantidad de muertes

-- pagina para buscar las id de titulos: https://www.ownedcore.com/forums/world-of-warcraft/world-of-warcraft-emulator-servers/wow-emu-guides-tutorials/236699-title-id-list.html

local T = {
{1, 15, 15}, -- Private/Scout
{2, 16, 2000}, -- Corporal/Grunt
{3, 17, 5000}, -- Sergeant
{4, 18, 10000}, -- Master/Senior Sergeant
{5, 19, 15000}, -- Sergeant Major/First Sergeant
{6, 20, 20000}, -- Knight/Stone Guard
{7, 21, 25000}, -- Knight-Lieutenant/Blood Guard
{8, 22, 30000}, -- Knight-Captain/Legionnaire
{9, 23, 35000}, -- Knight-Champion/Centurion
{10, 24, 40000}, -- Lieutenant Commander/Champion
{11, 25, 45000}, -- Commander/Lieutenant General
{12, 26, 50000}, -- Marshal/General
{13, 27, 55000}, -- Field Marshal/Warlord
{14, 28, 60000}, -- Grand Marshal/High Warlord
{62, 62, 75000}; -- Warbringer
};

function OnKilledTarget(event, plr, victim)
	for i = #T, 1, -1 do
		if (plr:GetLifetimeKills() >= T[i][3]) then
			if not plr:HasTitle(T[i][plr:GetTeam()+1]) then
				plr:SetKnownTitle(T[i][plr:GetTeam()+1])
			end
			break;
		end
	end
end

RegisterPlayerEvent(6, OnKilledTarget)