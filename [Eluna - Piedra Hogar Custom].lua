	
	-- Bueno este no lo hice yo, pero es facil, es un teleport en un item cualquiera, en este caso la ID es 6948 esa es la piedra hogar.
	-- Me da flojera explicarlo xd, pero sirve 100% y puedes preguntarme cualquiera fallito que te de.
	-- Atentamente: Mj Levy Ackerman
	
	local itemid = 6948
    function Tele_Book(event, player, item)
            if (player:IsInCombat() == true) then
                    player:SendAreaTriggerMessage("U can't use this while u are in combat!")
            else
                    Tele_Menu(item, player)
            end
    end

    function Tele_Menu(item, player) -- Home Page
	player:Dismount()
    player:GossipMenuAddItem(6, "Global GPS Teleport", 1,  100)
	player:GossipMenuAddItem(2, "Main Cities", 1,  101)
	player:GossipMenuAddItem(2, "PvP Areas|r", 1, 102)
	player:GossipMenuAddItem(2, "Customs Zones|r", 1, 103)
	player:GossipMenuAddItem(2, "Pocket bank", 1, 105)
	player:GossipMenuAddItem(2, "Gear Repair", 1, 106)
	player:GossipMenuAddItem(2, "VIP Service", 1, 108)
	player:SendNotification("|r|cff00ccffSystem |cffff0000[Hearthstone]|r")
    player:GossipSendMenu(1, item)
    end
     
    function Tele_Select(event, player, item, sender, intid, code)
	if (intid == 999) then
	Tele_Menu(item, player)
	elseif (intid == 100) then -- Home Page Cont.
    player:GossipMenuAddItem(2, "|cFF191970Azeroth Locations|r", 1,  2)
    player:GossipMenuAddItem(2, "|cFF191970Azeroth Instances|r", 1,  3)
    player:GossipMenuAddItem(2, "|cFF191970Azeroth Raids|r", 1,  4)
    player:GossipMenuAddItem(2, "|cFF191970Outland Locations|r", 1,  5)
    player:GossipMenuAddItem(2, "|cFF191970Outland Instances|r", 1,  6)
    player:GossipMenuAddItem(2, "|cFF191970Outland Raids|r", 1,  7)
    player:GossipMenuAddItem(2, "|cFF191970Northrend Locations|r", 1,  8)
    player:GossipMenuAddItem(2, "|cFF191970Northrend Instances|r", 1,  9)
    player:GossipMenuAddItem(2, "|cFF191970Northrend Raids|r", 1,  10)
	player:GossipMenuAddItem(5, "|cFF191970Shattrath City|r", 1,  11)
    player:GossipMenuAddItem(0, "|cFF191970Home Page", 1, 999)
    player:GossipSendMenu(1, item)
    elseif (intid == 101) then -- Alliance Cities
        if (player:IsAlliance()) then
		player:GossipMenuAddItem(2, "Mall Alliance", 1, 55641)
        player:GossipMenuAddItem(2, "Stormwind", 1,  19)
        player:GossipMenuAddItem(2, "Ironforge", 1,  20)
        player:GossipMenuAddItem(2, "Darnassus", 1,  21)
        player:GossipMenuAddItem(2, "Exodar", 1,  22)
        player:GossipMenuAddItem(0, "|c99006600Home Page|r", 1,  999)
        player:GossipSendMenu(1, item)
        else                                    -- Horde Cities
		player:GossipMenuAddItem(2, "Mall Horde", 1, 55642)
        player:GossipMenuAddItem(2, "Orgrimmar", 1,  23)
        player:GossipMenuAddItem(2, "Thunder bluff", 1,  24)
        player:GossipMenuAddItem(2, "Undercity", 1,  25)
        player:GossipMenuAddItem(2, "Silvermoon city", 1,  26)
        player:GossipMenuAddItem(0, "|c99006600Home Page|r", 1,  999)
        player:GossipSendMenu(1, item)
        end
	elseif (intid == 102) then -- PVP arenas.
		player:GossipMenuAddItem(2, "Gurubashi arena", 1, 10001)
		player:GossipMenuAddItem(2, "Dire Maul Arena", 1, 10002)
		player:GossipMenuAddItem(2, "Nagrand Arena", 1, 10003)
		player:GossipMenuAddItem(2, "Blade's Edge Arena", 1, 10004)
		player:GossipMenuAddItem(0, "<<Back>>", 1, 999)
		player:GossipSendMenu(1, item)		
	elseif (intid == 103) then -- Customs Zones
		player:GossipMenuAddItem(2, "[Well of the Forgotten]", 1, 9999)
		player:GossipMenuAddItem(2, "[Dalaran Tournament]", 1, 10000)
		player:GossipMenuAddItem(0, "<<Back>>", 1, 999)
		player:GossipSendMenu(1, item)
	elseif (intid == 105) then -- Send Bank Window
		player:SendShowBank(player)
	elseif (intid == 106) then -- repair items
        player:GossipMenuAddItem(7, "|cffffff00 < Previous Page", 1, 999)
        player:GossipMenuAddItem(0, "Items Repaired", 1, 999)
        player:DurabilityRepairAll( true )
		player:GossipSendMenu(1, item)
    elseif (intid == 108) then -- vip service
        player:GossipMenuAddItem(0, "Main menu ..", 1, 0)
        --if (player:GetPremiumType() >= 1 ) then
		player:GossipMenuAddItem(8, "Customs Buffs", 1, 30002)
        --else
            --player:GossipMenuAddItem(0, "need vip level 1", 1, 0)
        --end
		player:GossipMenuAddItem(0, "<<Back>>", 1, 999)
		player:GossipSendMenu(1, item)
	elseif(intid == 10000) then --Toc
		player:Teleport(571, 5830.139160, 477.591949, 658.930054, 4)
		player:GossipComplete()
	elseif(intid == 9999) then --Well of the forgotten
		player:Teleport(0, -11068.8, -1808.7, 52.7, 0)
		player:GossipComplete()
	    -- gurubashi arena
    elseif (intid == 10001) then
            player:Teleport(0, -13229, 226, 33, 0)
            player:GossipComplete()
		-- dire maul arena
    elseif (intid == 10002) then
            player:Teleport(1, -3669, 1094, 160, 0)
            player:GossipComplete()
	    -- Nagrand arena
    elseif (intid == 10003) then
            player:Teleport(530, -1983, 6562, 12, 0)
            player:GossipComplete()
	    -- blade's edge arena
    elseif (intid == 10004) then
            player:Teleport(530, 2084, 247, 68, 0)
            player:GossipComplete()
    elseif (intid == 2) then -- Azeroth Continets
            player:GossipMenuAddItem(2, "|c00FF0000Eastern Kingdoms|r", 1,  27)
            player:GossipMenuAddItem(2, "|c00FF0000Kalimdor|r", 1,  28)
            player:GossipMenuAddItem(0, "|c99006600Back Menu|r", 1,  100)
            player:GossipSendMenu(1, item)
    elseif (intid == 3) then -- Azeroth Instances
            player:GossipMenuAddItem(2, "|c00FF0000Blackfathom Deeps|r", 1,  29)
            player:GossipMenuAddItem(2, "|c00FF0000Blackrock Depths|r", 1,  30)
            player:GossipMenuAddItem(2, "|c00FF0000Dire Maul|r", 1,  31)
            player:GossipMenuAddItem(2, "|c00FF0000Gnomeregan|r", 1,  32)
            player:GossipMenuAddItem(2, "|c00FF0000Maraudon|r", 1,  33)
            if (player:IsAlliance()) then
                    player:GossipMenuAddItem(2, "|c00FF0000Ragefire Chasm|r", 1,  34)
            end
            player:GossipMenuAddItem(2, "|c00FF0000Razorfen Downs|r", 1,  35)
            player:GossipMenuAddItem(2, "|c00FF0000Razorfen Kraul|r", 1,  36)
            player:GossipMenuAddItem(2, "|c00FF0000Scarlet Monastery|r", 1,  37)
            player:GossipMenuAddItem(2, "|c00FF0000Scholomance|r", 1,  38)
            player:GossipMenuAddItem(2, "|c00FF0000Shadowfang Keep|r", 1,  39)
            player:GossipMenuAddItem(2, "|c00FF0000Stratholme|r", 1,  40)
            player:GossipMenuAddItem(2, "|c00FF0000Sunken Temple|r", 1,  41)
            player:GossipMenuAddItem(2, "|c00FF0000The Deadmines|r", 1,  42)
            if (player:IsHorde()) then
                    player:GossipMenuAddItem(2, "|c00FF0000The Stockade|r", 1,  43)
            end
            player:GossipMenuAddItem(0, "|c99006600Next Page|r", 1,  994)
            player:GossipMenuAddItem(0, "|c99006600Home Page|r", 1,  100)
            player:GossipSendMenu(1, item)     
    elseif (intid == 994) then -- Azeroth Instances Cont.
            player:GossipMenuAddItem(2, "|c00FF0000Uldaman|r", 1,  44)
            player:GossipMenuAddItem(2, "|c00FF0000Wailing Caverns|r", 1,  45)
            player:GossipMenuAddItem(2, "|c00FF0000Zul'Farrak|r", 1,  46)
            player:GossipMenuAddItem(0, "|c99006600Previous Page|r", 1,  3)
            player:GossipMenuAddItem(0, "|c99006600Back Menu|r", 1,  100)
            player:GossipSendMenu(1, item)
    elseif (intid == 4) then -- Azeroth Raids
            player:GossipMenuAddItem(2, "|c00FF0000Blackwing Lair|r", 1,  47)
            player:GossipMenuAddItem(2, "|c00FF0000Molten Core|r", 1,  48)
            player:GossipMenuAddItem(2, "|c00FF0000Onyxia's Lair|r", 1,  49)
            player:GossipMenuAddItem(2, "|c00FF0000Ruins of Ahn'Qiraj|r", 1,  50)
            player:GossipMenuAddItem(2, "|c00FF0000Temple of Ahn'Qiraj|r", 1,  51)
            player:GossipMenuAddItem(2, "|c00FF0000Zul'Gurub|r", 1, 52)
            player:GossipMenuAddItem(0, "|c99006600Back Menu|r", 1,  100)
            player:GossipSendMenu(1, item)
    elseif (intid == 5) then -- Outland Locations
            player:GossipMenuAddItem(2, "|c00FF0000Blade's Edge Mountains|r", 1,  53)
            player:GossipMenuAddItem(2, "|c00FF0000Hellfire Peninsula|r", 1,  54)
            player:GossipMenuAddItem(2, "|c00FF0000Nagrand|r", 1,  55)
            player:GossipMenuAddItem(2, "|c00FF0000Netherstorm|r", 1,  56)
            player:GossipMenuAddItem(2, "|c00FF0000Shadowmoon Valley|r", 1,  57)
            player:GossipMenuAddItem(2, "|c00FF0000Terokkar Forest|r", 1,  58)
            player:GossipMenuAddItem(2, "|c00FF0000Zangarmarsh|r", 1,  59)
            player:GossipMenuAddItem(0, "|c99006600Back Menu|r", 1,  100)
            player:GossipSendMenu(1, item)
    elseif (intid == 6) then -- Outland Instances
            player:GossipMenuAddItem(2, "|c00FF0000Auchindoun|r", 1,  60)
            player:GossipMenuAddItem(2, "|c00FF0000Caverns of Time|r", 1,  61)
            player:GossipMenuAddItem(2, "|c00FF0000Coilfang Reservoir|r", 1,  62)
            player:GossipMenuAddItem(2, "|c00FF0000Hellfire Citadel|r", 1,  63)
            player:GossipMenuAddItem(2, "|c00FF0000Magisters' Terrace|r", 1,  64)
            player:GossipMenuAddItem(2, "|c00FF0000Tempest Keep|r", 1,  65)
            player:GossipMenuAddItem(0, "|c99006600Back Menu|r", 1,  100)
            player:GossipSendMenu(1, item)
    elseif (intid == 7) then -- Outland Raids
            player:GossipMenuAddItem(2, "|c00FF0000Black Temple|r", 1,  66)
            player:GossipMenuAddItem(2, "|c00FF0000Hyjal Summit|r", 1,  67)
            player:GossipMenuAddItem(2, "|c00FF0000Serpentshrine Cavern|r", 1,  68)
            player:GossipMenuAddItem(2, "|c00FF0000Gruul's Lair|r", 1,  69)
            player:GossipMenuAddItem(2, "|c00FF0000Magtheridon's Lair|r", 1,  70)
            player:GossipMenuAddItem(2, "|c00FF0000Karazhan|r", 1, 71)
            player:GossipMenuAddItem(2, "|c00FF0000Sunwell Plateau|r", 1,  72)
            player:GossipMenuAddItem(2, "|c00FF0000The Eye|r", 1,  73)
            player:GossipMenuAddItem(2, "|c00FF0000Zul'Aman|r", 1,  74)
            player:GossipMenuAddItem(0, "|c99006600Back Menu|r", 1,  100)
            player:GossipSendMenu(1, item)
    elseif (intid == 8) then -- Northrend Locations
            player:GossipMenuAddItem(2, "|c00FF0000Borean Tundra|r", 1, 75)
            player:GossipMenuAddItem(2, "|c00FF0000Crystalsong Forest|r", 1, 76)
            player:GossipMenuAddItem(2, "|c00FF0000DragonBlight|r", 1, 77)
            player:GossipMenuAddItem(2, "|c00FF0000Grizzly Hills|r", 1, 78)
            player:GossipMenuAddItem(2, "|c00FF0000Howling Fjord|r", 1, 79)
            player:GossipMenuAddItem(2, "|c00FF0000Icecrown|r", 1, 80)
            player:GossipMenuAddItem(2, "|c00FF0000Sholazar Basin|r", 1, 81)
            player:GossipMenuAddItem(2, "|c00FF0000The Storm Peaks|r", 1, 82)
            player:GossipMenuAddItem(2, "|c00FF0000WinterGrasp|r", 1, 83)
            player:GossipMenuAddItem(2, "|c00FF0000Zul'Drak|r", 1, 84)
            player:GossipMenuAddItem(0, "|c99006600Back Menu|r", 1, 100)
            player:GossipSendMenu(1, item)
    elseif (intid == 9) then -- Northrend Instances
            player:GossipMenuAddItem(2, "|c00FF0000Azjol-Nerub|r", 1, 85)
            player:GossipMenuAddItem(2, "|c00FF0000Drak'Tharon Keep|r", 1, 86)
            player:GossipMenuAddItem(2, "|c00FF0000Gundrak|r", 1, 87)
            player:GossipMenuAddItem(2, "|c00FF0000The Culling of Stratholme|r", 1, 88)
            player:GossipMenuAddItem(2, "|c00FF0000The Halls of Lightning|r", 1, 89)
            player:GossipMenuAddItem(2, "|c00FF0000The Halls of Stone|r", 1, 90)
            player:GossipMenuAddItem(2, "|c00FF0000The Nexus|r", 1, 91)
            player:GossipMenuAddItem(2, "|c00FF0000The Violet Hold|r", 1, 92)
            player:GossipMenuAddItem(2, "|c00FF0000Utgarde Keep|r", 1, 93)
            player:GossipMenuAddItem(2, "|c00FF0000Utgarde Pinnacle|r", 1, 94)
            player:GossipMenuAddItem(0, "|c99006600Back Menu|r", 1, 100)
            player:GossipSendMenu(1, item)
    elseif (intid == 10) then -- Northrend Raids
            player:GossipMenuAddItem(2, "|c00FF0000Naxxramas|r", 1, 95)
            player:GossipMenuAddItem(2, "|c00FF0000The Eye of Eternity|r", 1, 96)
            player:GossipMenuAddItem(2, "|c00FF0000The Obsidian Sanctum|r", 1, 97)
            player:GossipMenuAddItem(2, "|c00FF0000Ulduar|r", 1, 98)
            player:GossipMenuAddItem(2, "|c00FF0000Vault of Archavon|r", 1, 99)
            player:GossipMenuAddItem(0, "|c99006600Back Menu|r", 1, 100)
            player:GossipSendMenu(1, item)
    -- Shattrath
    elseif (intid == 11) then
            player:Teleport(530, -1817.82, 5453.04, -12.42, 0)
			player:SendNotification("|r|cff00ccffSystem |cffff0000Teleport To [Shattrath City]|r")
            player:GossipComplete()
	   --zona de profesiones
    elseif (intid == 5567) then
            player:Teleport(530, -248.646118, 934.131592, 85.260094, 1.5)
			player:SendNotification("|r|cff00ccffSystem |cffff0000Teleport To [The Dark Portal]|r")
            player:GossipComplete()
		--mallzone alliance
	 elseif (intid == 55641) then
            player:Teleport(0, -3785.020020, -750.935974, 8.105550, 4.886920)
			player:SendNotification("|r|cff00ccffSystem |cffff0000Teleport To [Mall Zone Horde]|r")
            player:GossipComplete()
		--mallzone horde
	elseif (intid == 55642) then
            player:Teleport(0, -917.687988, -3489.743652, 70.450500, 4.685705)
			player:SendNotification("|r|cff00ccffSystem |cffff0000Teleport To [Mall Zone Horde]|r")
            player:GossipComplete()
	-- Alliance Cities
    elseif (intid == 19) then -- Stormwind
            player:Teleport(0, -8913.23, 554.63, 93.79, 0)
            player:GossipComplete()
    elseif (intid == 20) then -- Ironforge
            player:Teleport(0, -4923.826660, -957.8259, 502.673767, 0)
            player:GossipComplete()
    elseif (intid == 21) then -- Darnassus
            player:Teleport(1, 9945.49, 2609.89, 1316.26, 0)
            player:GossipComplete()
    elseif (intid == 22) then -- Exodar
            player:Teleport(530, -4002.67, -11875.54, -0.71, 0)
            player:GossipComplete()
    -- Horde Cities
    elseif (intid == 23) then -- Orgimmar
            player:Teleport(1, 1571.830322, -4414.051758, 7.721913, 0)
            player:GossipComplete()
    elseif (intid == 24) then -- Thunderbluff
            player:Teleport(1, -1285.23, 117.86, 129.99, 0)
            player:GossipComplete()
    elseif (intid == 25) then -- Undercity
            player:Teleport(0, 1831.26, 238.52, 60.52, 0)
            player:GossipComplete()
    elseif (intid == 26) then -- Silvermoon
            player:Teleport(530, 9398.75, -7277.41, 14.21, 0)
            player:GossipComplete()
    -- Azeroth Locations
    elseif (intid == 27) then -- Eastern Kingdoms
            player:GossipMenuAddItem(2, "Alterac Mountains", 1, 112)
            player:GossipMenuAddItem(2, "Arathi Highlands", 1, 113)
            player:GossipMenuAddItem(2, "Badlands", 1, 114)
            player:GossipMenuAddItem(2, "Blasted Lands", 1, 115)
            player:GossipMenuAddItem(2, "Burning Steppes", 1, 116)
            player:GossipMenuAddItem(2, "Deadwind Pass", 1, 117)
            player:GossipMenuAddItem(2, "Dun Morogh", 1, 118)
            player:GossipMenuAddItem(2, "Duskwood", 1, 119)
            player:GossipMenuAddItem(2, "Eastern Plaguelands", 1, 120)
            player:GossipMenuAddItem(2, "Elwynn Forest", 1, 121)
            player:GossipMenuAddItem(2, "Eversong Woods", 1, 122)
            player:GossipMenuAddItem(2, "Ghostlands", 1, 123)
            player:GossipMenuAddItem(2, "Hillsbrad Foothills", 1, 124)
            player:GossipMenuAddItem(2, "Isle of Quel'Danas", 1, 125)
            player:GossipMenuAddItem(0, "Next Page", 1, 996)
            player:GossipMenuAddItem(0, "Home Page", 1, 999)
            player:GossipSendMenu(1, item)
    elseif (intid == 996) then -- Eastern Kingdoms Cont.
            player:GossipMenuAddItem(2, "Loch Modan", 1, 126)
            player:GossipMenuAddItem(2, "Redridge Mountains", 1, 127)
            player:GossipMenuAddItem(2, "Searing Gorge", 1, 128)
            player:GossipMenuAddItem(2, "Silverpine Forest", 1, 129)
            player:GossipMenuAddItem(2, "Stranglethorn Vale", 1, 130)
            player:GossipMenuAddItem(2, "Swamp of Sorrows", 1, 131)
            player:GossipMenuAddItem(2, "The Hinterlands", 1, 132)
            player:GossipMenuAddItem(2, "Tirisfal Glades", 1, 133)
            player:GossipMenuAddItem(2, "Western Plaguelands", 1, 134)
            player:GossipMenuAddItem(2, "Westfall", 1, 135)
            player:GossipMenuAddItem(2, "Wetlands", 1, 136)
            player:GossipMenuAddItem(0, "Previous Page", 1, 27)
            player:GossipMenuAddItem(0, "Home Page", 1, 999)
            player:GossipSendMenu(1, item)
    elseif (intid == 28) then -- Kalimdor
            player:GossipMenuAddItem(2, "Ashenvale", 1, 137)
            player:GossipMenuAddItem(2, "Azshara", 1, 138)
            player:GossipMenuAddItem(2, "Azuremyst Isle", 1, 139)
            player:GossipMenuAddItem(2, "Bloodmyst Isle", 1, 140)
            player:GossipMenuAddItem(2, "Darkshore", 1, 141)
            player:GossipMenuAddItem(2, "Desolace", 1, 142)
            player:GossipMenuAddItem(2, "Durotar", 1, 143)
            player:GossipMenuAddItem(2, "Dustwallow Marsh", 1, 144)
            player:GossipMenuAddItem(2, "Felwood", 1, 145)
            player:GossipMenuAddItem(2, "Feralas", 1, 146)
            player:GossipMenuAddItem(2, "Moonglade", 1, 147)
            player:GossipMenuAddItem(2, "Mulgore", 1, 148)
            player:GossipMenuAddItem(2, "Silithus", 1, 149)
            player:GossipMenuAddItem(0, "Next Page", 1, 995)
            player:GossipMenuAddItem(0, "Home Page", 1, 999)
            player:GossipSendMenu(1, item)
    elseif (intid == 995) then -- Kalimdor Cont.
            player:GossipMenuAddItem(2, "Stonetalon Mountains", 1, 150)
            player:GossipMenuAddItem(2, "Tanaris", 1, 151)
            player:GossipMenuAddItem(2, "Teldrassil", 1, 152)
            player:GossipMenuAddItem(2, "The Barrens", 1, 153)
            player:GossipMenuAddItem(2, "Thousand Needles", 1, 154)
            player:GossipMenuAddItem(2, "Un'Goro Crater", 1, 0, 155)
            player:GossipMenuAddItem(2, "Winterspring", 1, 156)
            player:GossipMenuAddItem(0, "Previous Page", 1, 28)
            player:GossipMenuAddItem(0, "Home Page", 1, 999)
            player:GossipSendMenu(1, item)
    elseif (intid == 29) then -- Blackfathom Deeps
            player:Teleport(1, 4247.34, 744.05, -24.71, 0)
            player:GossipComplete()
    elseif (intid == 30) then -- Blackrock Depths
            player:Teleport(0, -7576.74, -1126.68, 262.26, 0)
            player:GossipComplete()
    elseif (intid == 31) then -- Dire Maul
            player:Teleport(1, -3879.52, 1095.26, 154.78, 0)
            player:GossipComplete()
    elseif (intid == 32) then -- Gnomeregan
            player:Teleport(0, -5162.63, 923.21, 257.17, 0)
            player:GossipComplete()
    elseif (intid == 33) then -- Maraudon
            player:Teleport(1, -1412.73, 2816.92, 112.64, 0)
            player:GossipComplete()
    elseif (intid == 34) then -- Ragefire Chasm
            player:Teleport(1, 1814.17, -4401.13, -17.67, 0)
            player:GossipComplete()
    elseif (intid == 35) then -- Razorfen Downs
            player:Teleport(1, -4378.32, -1949.14, 88.57, 0)
            player:GossipComplete()
    elseif (intid == 36) then -- Razorfen Kraul
            player:Teleport(1, -4473.31, -1810.05, 86.11, 0)
            player:GossipComplete()
    elseif (intid == 37) then -- Scarlet Monastery
            player:Teleport(0, 2881.84, -816.23, 160.33, 0)
            player:GossipComplete()
    elseif (intid == 38) then -- Scholomance
            player:Teleport(0, 1229.45, -2576.66, 90.43, 0)
            player:GossipComplete()
    elseif (intid == 39) then -- Shadowfang Keep
            player:Teleport(0, -243.85, 1517.21, 76.23, 0)
            player:GossipComplete()
    elseif (intid == 40) then -- Stratholme
            player:Teleport(0, 3362.14, -3380.05, 144.78, 0)
            player:GossipComplete()
    elseif (intid == 41) then -- Sunken Temple
            player:Teleport(0, -10452.32, -3817.51, 18.06, 0)
            player:GossipComplete()
    elseif (intid == 42) then -- The Deadmines
            player:Teleport(0, -11084.10, 1556.17, 48.12, 0)
            player:GossipComplete()
    elseif (intid == 43) then -- The Stockade
            player:Teleport(0, -8797.29, 826.67, 97.63, 0)
            player:GossipComplete()
    elseif (intid == 44) then -- Uldaman
            player:Teleport(0, -6072.23, -2955.94, 209.61, 0)
            player:GossipComplete()
    elseif (intid == 45) then -- Wailing Caverns
            player:Teleport(1, -735.11, -2214.21, 16.83, 0)
            player:GossipComplete()
    elseif (intid == 46) then -- Zul'Farrak
            player:Teleport(1, -6825.69, -2882.77, 8.91, 0)
            player:GossipComplete()
    -- Azeroth Raids
    elseif (intid == 47) then -- Blackwing Lair
            player:Teleport(469, -7666.11, -1101.53, 399.67, 0)
            player:GossipComplete()
    elseif (intid == 48) then -- Molten Core
            player:Teleport(230, 1117.61, -457.36, -102.49, 0)
            player:GossipComplete()
    elseif (intid == 49) then -- Onyxia's Lair
            player:Teleport(1, -4697.81, -3720.44, 50.35, 0)
            player:GossipComplete()
    elseif (intid == 50) then -- Ruins of Ahn'Qiraj
            player:Teleport(1, -8380.47, 1480.84, 14.35, 0)
            player:GossipComplete()
    elseif (intid == 51) then -- Temple of Ahn'Qiraj
            player:Teleport(1, -8258.27, 1962.73, 129.89, 0)
            player:GossipComplete()
    elseif (intid == 52) then -- Zul'Gurub
            player:Teleport(0, -11916.74, -1203.32, 92.28, 0)
            player:GossipComplete()
    -- Outland Locations
    elseif (intid == 53) then -- Blade's Edge Mountains
            player:Teleport(530, 2039.24, 6409.27, 134.30, 0)
            player:GossipComplete()
    elseif (intid == 54) then -- Hellfire Peninsula
            player:Teleport(530, -247.37, 964.77, 84.33, 0)
            player:GossipComplete()
    elseif (intid == 55) then -- Nagrand
            player:Teleport(530, -605.84, 8442.39, 60.76, 0)
            player:GossipComplete()
    elseif (intid == 56) then -- Netherstorm
            player:Teleport(530, 3055.70, 3671.63, 142.44, 0)
            player:GossipComplete()
    elseif (intid == 57) then -- Shadowmoon Valley
            player:Teleport(530, -2859.75, 3184.24, 9.76, 0)
            player:GossipComplete()
    elseif (intid == 58) then -- Terokkar Forest
            player:Teleport(530, -1917.17, 4879.45, 2.10, 0)
            player:GossipComplete()
    elseif (intid == 59) then -- Zangarmarsh
            player:Teleport(530, -206.61, 5512.90, 21.58, 0)
            player:GossipComplete()
    -- Outland Instances
    elseif (intid == 60) then -- Auchindoun
            player:Teleport(530, -3323.76, 4934.31, -100.21, 0)
            player:GossipComplete()
    elseif (intid == 61) then -- Caverns of Time
            player:Teleport(1, -8187.16, -4704.91, 19.33, 0)
            player:GossipComplete()
    elseif (intid == 62) then -- Coilfang Reservoir
            player:Teleport(530, 731.04, 6849.35, -66.62, 0)
            player:GossipComplete()
    elseif (intid == 63) then -- Hellfire Citadel
            player:Teleport(530, -331.87, 3039.30, -16.66, 0)
            player:GossipComplete()
    elseif (intid == 64) then -- Magisters' Terrace
            player:Teleport(530, 12884.92, -7333.78, 65.48, 0)
            player:GossipComplete()
    elseif (intid == 65) then -- Tempest Keep
            player:Teleport(530, 3088.25, 1388.17, 185.09, 0)
            player:GossipComplete()
    -- Outland Raids
    elseif (intid == 66) then -- Black Temple
            player:Teleport(530, -3638.16, 316.09, 35.40, 0)
            player:GossipComplete()
    elseif (intid == 67) then -- Hyjal Summit
            player:Teleport(1, -8175.94, -4178.52, -166.74, 0)
            player:GossipComplete()
    elseif (intid == 68) then -- Serpentshrine Cavern
            player:Teleport(530, 731.04, 6849.35, -66.62, 0)
            player:GossipComplete()
    elseif (intid == 69) then -- Gruul's Lair
            player:Teleport(530, 3528.99, 5133.50, 1.31, 0)
            player:GossipComplete()
    elseif (intid == 70) then -- Magtheridon's Lair
            player:Teleport(530, -337.50, 3131.88, -102.92, 0)
            player:GossipComplete()
    elseif (intid == 71) then -- Karazhan
            player:Teleport(0, -11119.22, -2010.73, 47.09, 0)
            player:GossipComplete()
    elseif (intid == 72) then -- Sunwell Plateau
            player:Teleport(530, 12560.79, -6774.58, 15.08, 0)
            player:GossipComplete()
    elseif (intid == 73) then -- The Eye
            player:Teleport(530, 3088.25, 1388.17, 185.09, 0)
            player:GossipComplete()
    elseif (intid == 74) then -- Zul'Aman
            player:Teleport(530, 6850, -7950, 170, 0)
            player:GossipComplete()
    -- Northrend Locations
    elseif (intid == 75) then -- Borean Tundra
            player:Teleport(571, 2920.15, 4043.40, 1.82, 0)
            player:GossipComplete()
    elseif (intid == 76) then -- Crystalsong Forest
            player:Teleport(571, 5371.18, 109.11, 157.65, 0)
            player:GossipComplete()
     elseif (intid == 77) then -- Dragonblight
            player:Teleport(571, 2729.59, 430.70, 66.98, 0)
            player:GossipComplete()
    elseif (intid == 78) then -- Grizzly Hills
            player:Teleport(571, 3587.20, -4545.12, 198.75, 0)
            player:GossipComplete()
    elseif (intid == 79) then -- Howling Fjord
            player:Teleport(571, 154.39, -4896.33, 296.14, 0)
            player:GossipComplete()
    elseif (intid == 80) then -- Icecrown
            player:Teleport(571, 8406.89, 2703.79, 665.17, 0)
            player:GossipComplete()
    elseif (intid == 81) then -- Sholazar Basin
            player:Teleport(571, 5569.49, 5762.99, -75.22, 0)
            player:GossipComplete()
    elseif (intid == 82) then -- The Storm Peaks
            player:Teleport(571, 6180.66, -1085.65, 415.54, 0)
            player:GossipComplete()
    elseif (intid == 83) then -- Wintergrasp
            player:Teleport(571, 5044.03, 2847.23, 392.64, 0)
            player:GossipComplete()
    elseif (intid == 84) then -- Zul'Drak
            player:Teleport(571, 4700.09, -3306.54, 292.41, 0)
            player:GossipComplete()
    -- Northrend Instances
    elseif (intid == 85) then -- Azjol-Nerub
            player:Teleport(571, 3738.93, 2164.14, 37.29, 0)
            player:GossipComplete()
    elseif (intid == 86) then -- Drak'Tharon
            player:Teleport(571, 4772.13, -2035.85, 229.38, 0)
            player:GossipComplete()
    elseif (intid == 87) then -- Gundrak
            player:Teleport(571, 6937.12, -4450.80, 450.90, 0)
            player:GossipComplete()
    elseif (intid == 88) then -- The Culling of Stratholme
            player:Teleport(1, -8746.94, -4437.69, -199.98, 0)
            player:GossipComplete()
    elseif (intid == 89) then -- The Halls of Lightning
            player:Teleport(571, 9171.01, -1375.94, 1099.55, 0)
            player:GossipComplete()
    elseif (intid == 90) then -- The Halls of Stone
            player:Teleport(571, 8921.35, -988.56, 1039.37, 0)
            player:GossipComplete()
    elseif (intid == 91) then -- The Nexus
            player:Teleport(571, 3784.76, 6941.97, 104.49, 0)
            player:GossipComplete()
    elseif (intid == 92) then -- The Violet Hold
            player:Teleport(571, 5695.19, 505.38, 652.68, 0)
            player:GossipComplete()
    elseif (intid == 93) then -- Utgarde Keep
            player:Teleport(571, 1222.44, -4862.61, 41.24, 0)
            player:GossipComplete()
    elseif (intid == 94) then -- Utgarde Pinnacle
            player:Teleport(571, 1251.10, -4856.31, 215.86, 0)
            player:GossipComplete()
    -- Northrend Raids
    elseif (intid == 95) then -- Naxxramas
            player:Teleport(571, 3669.77, -1275.48, 243.51, 0)
            player:GossipComplete()
    elseif (intid == 96) then -- The Eye of Eternity
            player:Teleport(571, 3873.50, 6974.83, 152.04, 0)
            player:GossipComplete()
    elseif (intid == 97) then -- The Obsidian Sanctum
            player:Teleport(571, 3547.39, 267.95, -115.96, 0)
            player:GossipComplete()
    elseif (intid == 98) then -- Ulduar
            player:Teleport(571, 9330.53, -1115.40, 1245.14, 0)
            player:GossipComplete()
    elseif (intid == 99) then -- Vault of Archavon
            player:Teleport(571, 5410.21, 2842.37, 418.67, 0)
            player:GossipComplete()
    -- Eastern Kingdoms
    elseif (intid == 112) then -- Alterac Mountains
            player:Teleport(0, 353.79, -607.08, 150.76, 0)
            player:GossipComplete()
    elseif (intid == 113) then -- Arathi Highlands
            player:Teleport(0, -2269.78, -2501.06, 79.04, 0)
            player:GossipComplete()
    elseif (intid == 114) then -- Badlands
            player:Teleport(0, -6026.58, -3318.27, 260.64, 0)
            player:GossipComplete()
    elseif (intid == 115) then -- Blasted Lands
            player:Teleport(0, -10797.67, -2994.29, 44.42, 0)
            player:GossipComplete()
    elseif (intid == 116) then -- Burning Steppes
            player:Teleport(0, -8357.72, -2537.49, 135.01, 0)
            player:GossipComplete()
    elseif (intid == 117) then -- Deadwind Pass
            player:Teleport(0, -10460.22, -1699.33, 81.85, 0)
            player:GossipComplete()
    elseif (intid == 118) then -- Dun Morogh
            player:Teleport(0, -6234.99, 341.24, 383.22, 0)
            player:GossipComplete()
    elseif (intid == 119) then -- Duskwood
            player:Teleport(0, -10068.30, -1501.07, 28.41, 0)
            player:GossipComplete()
    elseif (intid == 120) then -- Eastern Plaguelands
            player:Teleport(0, 1924.70, -2653.54, 59.70, 0)
            player:GossipComplete()
    elseif (intid == 121) then -- Elwynn Forest
            player:Teleport(0, -8939.71, -131.22, 83.62, 0)
            player:GossipComplete()
    elseif (intid == 122) then -- Eversong Woods
            player:Teleport(530, 10341.73, -6366.29, 34.31, 0)
            player:GossipComplete()
    elseif (intid == 123) then -- Ghostlands
            player:Teleport(530, 7969.87, -6872.63, 58.66, 0)
            player:GossipComplete()
    elseif (intid == 124) then -- Hillsbrad Foothills
            player:Teleport(0, -585.70, 612.18, 83.80, 0)
            player:GossipComplete()
    elseif (intid == 125) then -- Isle of Quel'Danas
            player:Teleport(530, 12916.81, -6867.82, 7.69, 0)
            player:GossipComplete()
    elseif (intid == 126) then -- Loch Modan
            player:Teleport(0, -4702.59, -2698.61, 318.75, 0)
            player:GossipComplete()
    elseif (intid == 127) then -- Redridge Mountains
            player:Teleport(0, -9600.62, -2123.21, 66.23, 0)
            player:GossipComplete()
    elseif (intid == 128) then -- Searing Gorge
            player:Teleport(0, -6897.73, -1821.58, 241.16, 0)
            player:GossipComplete()
    elseif (intid == 129) then -- Silverpine Forest
            player:Teleport(0, 1499.57, 623.98, 47.01, 0)
            player:GossipComplete()
    elseif (intid == 130) then -- Stranglethorn Vale
            player:Teleport(0, -11355.90, -383.40, 65.14, 0)
            player:GossipComplete()
    elseif (intid == 131) then -- Swamp of Sorrows
            player:Teleport(0, -10552.60, -2355.25, 85.95, 0)
            player:GossipComplete()
    elseif (intid == 132) then -- The Hinterlands
            player:Teleport(0, 92.63, -1942.31, 154.11, 0)
            player:GossipComplete()
    elseif (intid == 133) then -- Tirisfal Glades
            player:Teleport(0, 1676.13, 1669.37, 137.02, 0)
            player:GossipComplete()
    elseif (intid == 134) then -- Western Plaguelands
            player:Teleport(0, 1635.57, -1068.50, 66.57, 0)
            player:GossipComplete()
    elseif (intid == 135) then -- Westfall
            player:Teleport(0, -9827.95, 865.80, 25.80, 0)
            player:GossipComplete()
    elseif (intid == 136) then -- Wetlands
            player:Teleport(0, -4086.32, -2620.72, 43.55, 0)
            player:GossipComplete()
    -- Kalimdor
    elseif (intid == 137) then -- Ashenvale
            player:Teleport(1, 3474.41, 853.47, 5.76, 0)
            player:GossipComplete()
    elseif (intid == 138) then -- Azshara
            player:Teleport(1, 2763.93, -3881.34, 92.52, 0)
            player:GossipComplete()
    elseif (intid == 139) then -- Azuremyst Isle
            player:Teleport(530, -3972.72, -13914.99, 98.88, 0)
            player:GossipComplete()
    elseif (intid == 140) then -- Bloodmyst Isle
            player:Teleport(530, -2721.67, -12208.90, 9.08, 0)
            player:GossipComplete()
    elseif (intid == 141) then -- Darkshore
            player:Teleport(1, 4336.61, 173.83, 46.84, 0)
            player:GossipComplete()
    elseif (intid == 142) then -- Desolace
            player:Teleport(1, 47.28, 1684.64, 93.55, 0)
            player:GossipComplete()
    elseif (intid == 143) then -- Durotar
            player:Teleport(1, -611.61, -4263.16, 38.95, 0)
            player:GossipComplete()
    elseif (intid == 144) then -- Dustwallow Marsh
            player:Teleport(1, -3682.58, -2556.93, 58.43, 0)
            player:GossipComplete()
    elseif (intid == 145) then -- Felwood
            player:Teleport(1, 3590.56, -1516.69, 169.98, 0)
            player:GossipComplete()
    elseif (intid == 146) then -- Feralas
            player:Teleport(1, -4300.02, -631.56, -9.35, 0)
            player:GossipComplete()
    elseif (intid == 147) then -- Moonglade
            player:Teleport(1, 7999.68, -2670.19, 512.09, 0)
            player:GossipComplete()
    elseif (intid == 148) then -- Mulgore
            player:Teleport(1, -2931.49, -262.82, 53.25, 0)
            player:GossipComplete()
    elseif (intid == 149) then -- Silithus
            player:Teleport(1, -6814.57, 833.77, 49.74, 0)
            player:GossipComplete()
    elseif (intid == 150) then -- Stonetalon Mountains
            player:Teleport(1, -225.34, -765.16, 6.4, 0)
            player:GossipComplete()
    elseif (intid == 151) then -- Tanaris
            player:Teleport(1, -6999.47, -3707.94, 26.44, 0)
            player:GossipComplete()
    elseif (intid == 152) then -- Teldrassil
            player:Teleport(1, 8754.06, 949.62, 25.99, 0)
            player:GossipComplete()
    elseif (intid == 153) then -- The Barrens
            player:Teleport(1, -948.46, -3738.60, 5.98, 0)
            player:GossipComplete()
    elseif (intid == 154) then -- Thousand Needles
            player:Teleport(1, -4685.72, -1836.24, -44.04, 0)
            player:GossipComplete()
    elseif (intid == 155) then -- Un'Goro Crater
            player:Teleport(1, -6162.47, -1098.74, -208.99, 0)
            player:GossipComplete()
    elseif (intid == 156) then -- Winterspring
            player:Teleport(1, 6896.27, -2302.51, 586.69, 0)
            player:GossipComplete()
    -- Foothills
    elseif(intid == 9997) then
        if (player:IsAlliance()) then
            player:GossipMenuAddItem(2, "Qurantis", 1, 1235)
            player:GossipSendMenu(1, item)
        else     
            player:GossipMenuAddItem(2, "Mulderan", 1, 1236)
            player:GossipSendMenu(1, item)
        end     
    elseif(intid == 1235) then -- Qurantis
            player:Teleport(560, 3611.490723, 2288.865967, 59.283901, 0)
    elseif(intid == 1236) then -- Mulderan
            player:Teleport(560, 2539.483643, 2423.052734, 63.581509, 0)
 	-------------------------BUFFOS CUSTOMS , PROMOCION-------------------------------------------------
	elseif (intid == 30002) then --Buffs Customs
            player:AddAura(48162, player)
			player:AddAura(48074, player)
			player:AddAura(48170, player)
			player:AddAura(43223, player)
			player:AddAura(48934, player)
			player:AddAura(48938, player)
			player:AddAura(25899, player)
			player:AddAura(36880, player)
			player:AddAura(43015, player)
			player:AddAura(43017, player)
			player:AddAura(69381, player)
			player:AddAura(467, player)
			player:AddAura(69994, player)
			player:GossipComplete()
    end
end
     
    RegisterItemGossipEvent(itemid, 1, Tele_Book)
    RegisterItemGossipEvent(itemid, 2, Tele_Select)