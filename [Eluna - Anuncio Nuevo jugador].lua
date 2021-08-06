


function new(event, player)
-- Este es como un mensaje de aviso para todos los jugadores cuando recien entras a un servidor bueno saldra este mensaje de Bienvenida, lo puedes decorar, ponerles colores, iconos, etc ..
SendWorldMessage("[ |cffffffffBienvenido |cff00ff40"..player:GetName().." |cffffffffa |cffffff80NOMBRE DE TU SERVIDOR - 3.3.5.")

end
RegisterPlayerEvent(30, new)