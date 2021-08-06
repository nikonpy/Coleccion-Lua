
local command = "reparar"

 function onCommand(event, player, cmd, type)
    if cmd == command then
        player:DurabilityRepairAll()
		player:SendBroadcastMessage("|cffFF0000[SYSTEM] |cffffff00 ["..player:GetName().."] |cff00cc00Tus items han sido reparados.|r")
		return false;
    end
end
 
RegisterPlayerEvent(42, onCommand)