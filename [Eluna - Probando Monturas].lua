local npcid = ID DE TU NPC

-- Bueno este scripts es como un probador de monturas, es facilito, izi pizi

function mount_gossip(unit, player, creature)
	player:GossipMenuAddItem(5, "Montura: Moto", 0, 1) -- aqui tu cambias tus nombres a la montura que quieras probar
	player:GossipMenuAddItem(5, "Montura: Tigre espectral", 0, 2)
	player:GossipMenuAddItem(0, "Olvidar", 0, 999)
	player:GossipSendMenu(1, creature)
end



function mount_select(event, player, item, sender, intid, code)
   if (intid == 1) then -- Si la opción es "1" pues castea el hechizo
		player:CastSpell(player, 60424, true) -- Aqui lo que hace es castearla la spell al jugador, cuando de clic en "Montura: Moto"
		player:GossipComplete() -- Cierra el menú
    end
	
	-- Ahora un ejemplito por si no entendiste we .. mira bien - Ya que usaste la opción "1" arriba ya no puedes volver a repetirla verdad, entonces viene
	-- la opción 2 es decir que quedaria asi:
	
	 if (intid == 2) then -- Si la opción es "2" pues castea el hechizo
		player:CastSpell(player, 42776, true) -- Aqui lo que hace es castearla la spell al jugador, cuando de clic en "Montura: tigre espectral "
		player:GossipComplete() -- Cierra el menú
    end
	
	 if (intid == 999) then -- si la opción es "999" cierra el menu
		player:GossipComplete()
    end
	
end

-- Si ves es facilito, explicado por: Mj Levy
RegisterCreatureGossipEvent(npcid, 1, mount_gossip)
RegisterCreatureGossipEvent(npcid, 2, mount_select)