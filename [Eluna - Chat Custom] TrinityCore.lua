
local item = ID DE TU ITEM
-- Bueno esto es un chat custom es decir cuando hables por /decir o /say te saldra un chat personalizado
--- Aqui el mensaje que te saldra cuando hables es "VIP", cabe resaltar solo funciona para trinitycore

local gsub = string.gsub
local text = "[vip]: " -- este mensaje se lo puedes cambiar a lo que quieras
local color = "|ccc399BFB" -- este es el color recuerda que LUA utiliza colores hexadecimales, los puedes buscar en google.


local function OnChatSpeak(event, player, msg, Type, lang) 
    if(player:HasItem(item)) then -- Si tienes el item te saldra el "VIP" al escribir.
    player:Say(gsub(""..text..""..color..""..msg, "|r","|r", 0))
	return false
	else -- y si no lo tienes pues no te saldra nada jaja
	end
end

RegisterPlayerEvent(18, OnChatSpeak)