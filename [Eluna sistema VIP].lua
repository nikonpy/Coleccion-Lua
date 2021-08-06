
-- Thanks Kusa por las guias -- edit Mj Levy Ackerman

-- Porfavor antes de usar este scripts - en el SQL que te dejo junto a este link, primero agrega el SQL: "account_vip" a tu auth
-- Una ves puesto en tu auth, buscarás la tabla nueva que se llamara "account_vip" la abres, te saldra 3 columnas, AccountId - Vip_Level - active
-- En la primera columna AccountId vas a poner la ID de tu cuenta
-- En la segunda columna Vip_Level vas a poner el numero 1
-- y en la tercera no pondras nada, la dejas vacia o en 0.

-- Cuando hayas hecho eso ya podras probar tu scripts, funciona con estos comandos:

-- #vip on --> activa el vip
-- #vip off --> Desactiva el vip
-- #buff --> Te bufea
-- #repair --> repara tus items
-- #bank --> abre tu banco
-- #tvip --> te lleva a la zona vip

-- Recuerda cualquiera duda de no saber ponerlo avisarme no más, chauu.

local VIP	   = 1 
local active_1 = 1 
local active_0 = 0


-- Custom Spell List
local Spell1 = 15366
local Spell2 = 16609
local Spell3 = 48162
local Spell4 = 48074
local Spell5 = 48170
local Spell6 = 43223
local Spell7 = 36880
local Spell8 = 467
local Spell9 = 69994
local Spell10 = 33081
local Spell11 = 24705
local Spell12 = 26035
local Spell13 = 48469



local NoVIP1	 = "|cffff0000[SystemVip]|r I am sorry"
local NoVIP2     = "Tu no eres VIP |r"

local ActiveVip1 = "|cffff0000[SystemVip]|r"
local ActiveVip2 = "Please activate your vip on"

local VipOn      = "|cff00ff00|TInterface\\icons\\spell_holy_fanaticism:15|t|r VIP Activated |cffff0000"

local VipOff     = "|cff00ff00|TInterface\\icons\\Spell_Shadow_DeathScream:15|t|r ¡VIP Off! |cffff0000"

local Buff 		 = "|cff00ff00|TInterface\\icons\\Spell_Nature_StormReach:15|t|r You're Buffed |cffff0000"


local function CustomVipActive(event, player, msg, _, lang)
    local result = AuthDBQuery("SELECT AccountId FROM account_vip WHERE Vip_Level=1 and AccountId = "..player:GetAccountId())
    if (msg == "#vip on") then  -- Use #premium for sending the gossip menu
		if (result) then
			OnMenuVipOnHello(event, player)
		else
			player:SendBroadcastMessage(""..NoVIP1.." "..player:GetName()..""..NoVIP2.."")
		end
	end
end
	
local function CustomVipOff(event, player, msg, _, lang)
    local result = AuthDBQuery("SELECT AccountId FROM account_vip WHERE Vip_Level=1 and AccountId = "..player:GetAccountId())
    if (msg == "#vip off") then  -- Use #premium for sending the gossip menu
		if (result) then
			OnMenuVipOffHello(event, player)
		else
			player:SendBroadcastMessage(""..NoVIP1.." "..player:GetName()..""..NoVIP2.."")
		end
	end
end

local function Custom0OnChat(event, player, msg, _, lang)
    local result = AuthDBQuery("SELECT AccountId FROM Account_VIP WHERE active=1 and AccountId = "..player:GetAccountId())
    if (msg == "#buff") then  -- 
        if (result) then
            OnMenu0Hello(event, player)
        else
            player:SendBroadcastMessage(""..ActiveVip1.." "..player:GetName().." "..ActiveVip2.."")
        end
    end
end

local function Custom1OnChat(event, player, msg, _, lang)
    local result = AuthDBQuery("SELECT AccountId FROM Account_VIP WHERE active=1 and AccountId = "..player:GetAccountId())
    if (msg == "#repair") then  -- 
        if (result) then
            OnMenu1Hello(event, player)
        else
            player:SendBroadcastMessage(""..ActiveVip1.." "..player:GetName().." "..ActiveVip2.."")
        end
    end
end

local function Custom2OnChat(event, player, msg, _, lang)
    local result = AuthDBQuery("SELECT AccountId FROM Account_VIP WHERE active=1 and AccountId = "..player:GetAccountId())
    if (msg == "#bank") then  -- 
        if (result) then
            OnMenu2Hello(event, player)
        else
            player:SendBroadcastMessage(""..ActiveVip1.." "..player:GetName().." "..ActiveVip2.."")
        end
    end
end

local function Custom3OnChat(event, player, msg, _, lang)
	local result3 = AuthDBQuery("SELECT AccountId FROM Account_VIP WHERE active=1 and AccountId = "..player:GetAccountId())
	if (msg == "#tvip") then  -- 
		if (result3) then
			OnMenu3Hello(event, player)		
		else
			player:SendBroadcastMessage(""..ActiveVip1.." "..player:GetName().." "..ActiveVip2.."")
		end
	end
end

function OnMenuVipOnHello(envent, player)
AuthDBQuery("REPLACE INTO Account_VIP (AccountId, Vip_Level, active) VALUES ("..player:GetAccountId().. ","..VIP..","..active_1..")")
player:SendAreaTriggerMessage(""..VipOn..""..player:GetName().."")
player:SendBroadcastMessage(""..VipOn..""..player:GetName().."")  
end

function OnMenuVipOffHello(envent, player)
AuthDBQuery("UPDATE auth.Account_VIP SET `active`='"..active_0.."' WHERE `AccountId`='"..player:GetAccountId().."';");
player:SendAreaTriggerMessage(""..VipOff..""..player:GetName().."")
player:SendBroadcastMessage(""..VipOff..""..player:GetName().."")  
end

function OnMenu0Hello(event, player)


--  Estos son los buff que estan arriba, ahi mismo los cambias

    player:CastSpell(player, Spell1, true) 
    player:CastSpell(player, Spell2, true)
    player:CastSpell(player, Spell3, true)
    player:CastSpell(player, Spell4, true)
    player:CastSpell(player, Spell5, true)
    player:CastSpell(player, Spell6, true)
    player:CastSpell(player, Spell7, true)
    player:CastSpell(player, Spell8, true)
    player:CastSpell(player, Spell9, true)
    player:CastSpell(player, Spell10, true)
    player:CastSpell(player, Spell11, true)
    player:CastSpell(player, Spell12, true)
    player:CastSpell(player, Spell13, true)
    player:SendAreaTriggerMessage(""..Buff..""..player:GetName().."")
    player:SendBroadcastMessage(""..Buff..""..player:GetName().."")  
end


local Repair = "|cff00ff00Your Items Are Fixed |cffff0000"
local Bank 	 = "|cff00ff00Bank of |cffff0000"
local MsgTele = "|cff00FF1DTeleporting [zone vip]"
	
function OnMenu1Hello(event, player)
	player:DurabilityRepairAll() -- Esto es para reparar tus items
	player:SendBroadcastMessage(""..Repair..""..player:GetName().."")
	player:GossipComplete()
end
	
	
function OnMenu2Hello(event, player)
	player:SendShowBank(player) --- Mostrar tu banco
	player:SendBroadcastMessage(""..Bank..""..player:GetName().."")
	player:GossipComplete()
end
	
function OnMenu3Hello(event, player)
	player:Teleport(0, 4298.775879, -2762.187256, 16.632673, 3.633596) -- Aqui para cambiar coordenadas a la zona VIP, recuerda usar .gps y ponerlas en el orden = (MAP, X, Y, Z, O)
	player:Dismount()
	player:SendBroadcastMessage(""..MsgTele"..")
	player:SendNotification("|cff00FF1DWait a minute.....")
	player:GossipComplete()
end
	
local function VIPLogout (event, player) --This Remove Vip On.
	AuthDBQuery("UPDATE auth.Account_VIP SET `active`='"..active_0.."' WHERE `AccountId`='"..player:GetAccountId().."';");
end

-- Registro de eventos
RegisterPlayerEvent(4, VIPLogout)
RegisterPlayerEvent(18, Custom0OnChat)
RegisterPlayerEvent(18, Custom1OnChat)
RegisterPlayerEvent(18, Custom2OnChat)
RegisterPlayerEvent(18, Custom3OnChat)
RegisterPlayerEvent(18, CustomVipActive)
RegisterPlayerEvent(18, CustomVipOff)
