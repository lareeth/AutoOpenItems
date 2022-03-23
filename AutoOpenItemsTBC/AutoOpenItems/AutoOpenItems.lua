-- Creating a script 
local AutoOpenItems = CreateFrame('Frame')
AutoOpenItems:SetScript('OnEvent', function(self, event, ...) self[event](...) end)

print("|cff00FF00AOI:Auto Open Items Loaded Version: WoW TBC")

-- Add id here: 

local Whitelist = {

	-- Vanilla

	[10456]			= true,			-- A Bulging Coin Purse
	[15902]			= true,			-- A Crazy Grab Bag
	[11883]			= true,			-- A Dingy Fanny Pack
	[5335]			= true,			-- A Sack of Coins
	[6755]			= true,			-- A Small Container of Gems
	[11107]			= true,			-- A Small Pack
	[21510]			= true,			-- Ahn'Qiraj War Effort Supplies
	[21511]			= true,			-- Ahn'Qiraj War Effort Supplies
	[21509]			= true,			-- Ahn'Qiraj War Effort Supplies
	[21512]			= true,			-- Ahn'Qiraj War Effort Supplies
	[21513]			= true,			-- Ahn'Qiraj War Effort Supplies
	[20231]			= true,			-- Arathor Advanced Care Package
	[20233]			= true,			-- Arathor Basic Care Package
	[20236]			= true,			-- Arathor Standard Care Package
	[11955]			= true,			-- Bag of Empty Ooze Containers
	[20603]			= true,			-- Bag of Spoils
	[6356]			= true,			-- Battered Chest
	[6647]			= true,			-- Bloated Catfish
	[6645]			= true,			-- Bloated Mud Snapper
	[13881]			= true,			-- Bloated Redgill
	[21164]			= true,			-- Bloated Rockscale Cod
	[13891]			= true,			-- Bloated Salmon
	[6643]			= true,			-- Bloated Smallfish
	[8366]			= true,			-- Bloated Trout
	[17962]			= true,			-- Blue Sack of Gems
	[21812]			= true,			-- Box of Chocolates
	[10695]			= true,			-- Box of Empty Vials
	[9541]			= true,			-- Box of Goodies
	[9539]			= true,			-- Box of Rations
	[9540]			= true,			-- Box of Spells
	[6827]			= true,			-- Box of Supplies
	[22746]			= true,			-- Buccaneer's Uniform
	[21191]			= true,			-- Carefully Wrapped Present
	[11887]			= true,			-- Cenarion Circle Cache
	[20602]			= true,			-- Chest of Spoils
	[21741]			= true,			-- Cluster Rocket Recipes
	[21528]			= true,			-- Colossal Bag of Loot
	[20808]			= true,			-- Combat Assignment
	[15103]			= true,			-- Corrupt Tested Sample
	[5738]			= true,			-- Covert Ops Pack
	[9265]			= true,			-- Cuergo's Hidden Treasure
	[23022]			= true,			-- Curmudgeon's Payoff
	[19422]			= true,			-- Darkmoon Faire Fortune
	[20469]			= true,			-- Decoded True Believer Clippings
	[20228]			= true,			-- Defiler's Advanced Care Package
	[20229]			= true,			-- Defiler's Basic Care Package
	[20230]			= true,			-- Defiler's Standard Care Package
	[12849]			= true,			-- Demon Kissed Sack
	[6351]			= true,			-- Dented Crate
	[8647]			= true,			-- Egg Crate
	[10752]			= true,			-- Emerald Encrusted Chest
	[11617]			= true,			-- Eridan's Supplies
	[11024]			= true,			-- Evergreen Herb Casing
	[11937]			= true,			-- Fat Sack of Coins
	[10834]			= true,			-- Felhound Tracker Kit
	[21363]			= true,			-- Festive Gift
	[21131]			= true,			-- Followup Combat Assignment
	[21386]			= true,			-- Followup Logistics Assignment
	[20805]			= true,			-- Followup Logistics Assignment
	[21133]			= true,			-- Followup Tactical Assignment
	[8484]			= true,			-- Gadgetzan Water Co. Care Package
	[21310]			= true,			-- Gaily Wrapped Present
	[21270]			= true,			-- Gently Shaken Gift
	[21271]			= true,			-- Gently Shaken Gift
	[21980]			= true,			-- Gift of Adoration: Ironforge
	[21981]			= true,			-- Gift of Adoration: Stormwind
	[22171]			= true,			-- Gift of Friendship: Thunder Bluff
	[8049]			= true,			-- Gnarlpine Necklace
	[11423]			= true,			-- Gnome Engineer's Renewal Gift
	[11422]			= true,			-- Goblin Engineer's Renewal Gift
	[17964]			= true,			-- Gray Sack of Gems
	[19296]			= true,			-- Greater Darkmoon Prize
	[17963]			= true,			-- Green Sack of Gems
	[10773]			= true,			-- Hakkari Urn
	[13874]			= true,			-- Heavy Crate
	[22648]			= true,			-- Hive'Ashi Dossier
	[22649]			= true,			-- Hive'Regal Dossier
	[22650]			= true,			-- Hive'Zora Dossier
	[10569]			= true,			-- Hoard of the Black Dragonflight
	[21150]			= true,			-- Iron Bound Trunk
	[10479]			= true,			-- Kovic's Trading Satchel
	[12122]			= true,			-- Kum'isha's Junk
	[19035]			= true,			-- Lard's Special Picnic Basket
	[21743]			= true,			-- Large Cluster Rocket Recipes
	[21742]			= true,			-- Large Rocket Recipes
	[19297]			= true,			-- Lesser Darkmoon Prize
	[21132]			= true,			-- Logistics Assignment
	[21266]			= true,			-- Logistics Assignment
	[18804]			= true,			-- Lord Grayson's Satchel
	[21746]			= true,			-- Lucky Red Envelope
	[21640]			= true,			-- Lunar Festival Fireworks Pack
	[6307]			= true,			-- Message in a Bottle
	[19298]			= true,			-- Minor Darkmoon Prize
	[21228]			= true,			-- Mithril Bound Trunk
	[22320]			= true,			-- Mux's Quality Goods
	[19425]			= true,			-- Mysterious Lockbox
	[21042]			= true,			-- Narain's Special Kit
	[15876]			= true,			-- Nathanos' Chest
	[20768]			= true,			-- Oozing Bag
	[19153]			= true,			-- Outrider Advanced Care Package
	[19154]			= true,			-- Outrider Basic Care Package
	[19155]			= true,			-- Outrider Standard Care Package
	[11912]			= true,			-- Package of Empty Ooze Containers
	[9276]			= true,			-- Pirate's Footlocker
	[22155]			= true,			-- Pledge of Adoration: Darnassus
	[22154]			= true,			-- Pledge of Adoration: Ironforge
	[21975]			= true,			-- Pledge of Adoration: Stormwind
	[22157]			= true,			-- Pledge of Adoration: Undercity
	[17969]			= true,			-- Red Sack of Gems
	[6715]			= true,			-- Ruined Jumper Cables
	[11938]			= true,			-- Sack of Gems
	[20601]			= true,			-- Sack of Spoils
	[21156]			= true,			-- Scarab Bag
	[7190]			= true,			-- Scorched Rocket Boots
	[20767]			= true,			-- Scum Covered Bag
	[22568]			= true,			-- Sealed Craftsman's Writ
	[6357]			= true,			-- Sealed Crate
	[19152]			= true,			-- Sentinel Advanced Care Package
	[19150]			= true,			-- Sentinel Basic Care Package
	[19151]			= true,			-- Sentinel Standard Care Package
	[20766]			= true,			-- Slimy Bag
	[15699]			= true,			-- Small Brown-Wrapped Package
	[6353]			= true,			-- Small Chest
	[21740]			= true,			-- Small Rocket Recipes
	[11966]			= true,			-- Small Sack of Coins
	[21216]			= true,			-- Smokywood Pastures Extra-Special Gift
	[17727]			= true,			-- Smokywood Pastures Gift Pack
	[17685]			= true,			-- Smokywood Pastures Sampler
	[17726]			= true,			-- Smokywood Pastures Special Gift
	[21315]			= true,			-- Smokywood Satchel
	[9363]			= true,			-- Sparklematic-Wrapped Box
	[20809]			= true,			-- Tactical Assignment
	[7870]			= true,			-- Thaumaturgy Vessel Lockbox
	[21327]			= true,			-- Ticking Present
	[20708]			= true,			-- Tightly Sealed Trunk
	[11568]			= true,			-- Torwa's Pouch
	[15102]			= true,			-- Un'Goro Tested Sample
	[12339]			= true,			-- Vaelan's Gift
	[6352]			= true,			-- Waterlogged Crate
	[21113]			= true,			-- Watertight Trunk
	[17965]			= true,			-- Yellow Sack of Gems
	[22137]			= true,			-- Ysida's Satchel

	-- The Burning Crusade

	[34583]			= true,			-- Aldor Supplies Package
	[34587]			= true,			-- Aldor Supplies Package
	[34595]			= true,			-- Aldor Supplies Package
	[34592]			= true,			-- Aldor Supplies Package
	[31955]			= true,			-- Arelion's Knapsack
	[35348]			= true,			-- Bag of Fishing Treasures
	[34863]			= true,			-- Bag of Fishing Treasures
	[25423]			= true,			-- Bag of Premium Gems
	[33844]			= true,			-- Barrel of Fish
	[34846]			= true,			-- Black Sack of Gems
	[35313]			= true,			-- Bloated Barbed Gill Trout
	[35286]			= true,			-- Bloated Giant Sunfish
	[35945]			= true,			-- Brilliant Glass
	[25422]			= true,			-- Bulging Sack of Gems
	[23921]			= true,			-- Bulging Sack of Silver
	[30320]			= true,			-- Bundle of Nether Spikes
	[33857]			= true,			-- Crate of Meat
	[34077]			= true,			-- Crudely Wrapped Gift
	[27513]			= true,			-- Curious Crate
	[30650]			= true,			-- Dertrok's Wand Case
	[24336]			= true,			-- Fireproof Satchel
	[25424]			= true,			-- Gem-Stuffed Envelope
	[21979]			= true,			-- Gift of Adoration: Darnassus
	[22164]			= true,			-- Gift of Adoration: Orgrimmar
	[22165]			= true,			-- Gift of Adoration: Thunder Bluff
	[22166]			= true,			-- Gift of Adoration: Undercity
	[22167]			= true,			-- Gift of Friendship: Darnassus
	[22168]			= true,			-- Gift of Friendship: Ironforge
	[22169]			= true,			-- Gift of Friendship: Orgrimmar
	[22170]			= true,			-- Gift of Friendship: Stormwind
	[22172]			= true,			-- Gift of Friendship: Undercity
	[37586]			= true,			-- Handful of Treats
	[27481]			= true,			-- Heavy Supply Crate
	[33928]			= true,			-- Hollowed Bone Decanter
	[27511]			= true,			-- Inscribed Scrollcase
	[32777]			= true,			-- Kronk's Grab Bag
	[32626]			= true,			-- Large Copper Metamorphosis Geode
	[32629]			= true,			-- Large Gold Metamorphosis Geode
	[32624]			= true,			-- Large Iron Metamorphosis Geode
	[32628]			= true,			-- Large Silver Metamorphosis Geode
	[32462]			= true,			-- Morthis' Materials
	[27446]			= true,			-- Mr. Pinchy's Gift
	[23846]			= true,			-- Nolkai's Box
	[31408]			= true,			-- Offering of the Sha'tar
	[32835]			= true,			-- Ogri'la Care Package
	[31800]			= true,			-- Outcast's Cache
	[24402]			= true,			-- Package of Identified Plants
	[22156]			= true,			-- Pledge of Adoration: Orgrimmar
	[22158]			= true,			-- Pledge of Adoration: Thunder Bluff
	[22159]			= true,			-- Pledge of Friendship: Darnassus
	[22160]			= true,			-- Pledge of Friendship: Ironforge
	[22161]			= true,			-- Pledge of Friendship: Orgrimmar
	[22178]			= true,			-- Pledge of Friendship: Stormwind
	[22162]			= true,			-- Pledge of Friendship: Thunder Bluff
	[22163]			= true,			-- Pledge of Friendship: Undercity
	[35512]			= true,			-- Pocket Full of Snow
	[31522]			= true,			-- Primal Mooncloth Supplies
	[32064]			= true,			-- Protectorate Treasure Cache
	[33045]			= true,			-- Renn's Supplies
	[34584]			= true,			-- Scryer Supplies Package
	[34585]			= true,			-- Scryer Supplies Package
	[34593]			= true,			-- Scryer Supplies Package
	[34594]			= true,			-- Scryer Supplies Package
	[33926]			= true,			-- Sealed Scroll Case
	[35232]			= true,			-- Shattered Sun Supplies
	[32724]			= true,			-- Sludge-Covered Object
	[32627]			= true,			-- Small Copper Metamorphosis Geode
	[32630]			= true,			-- Small Gold Metamorphosis Geode
	[32625]			= true,			-- Small Iron Metamorphosis Geode
	[32631]			= true,			-- Small Silver Metamorphosis Geode
	[25419]			= true,			-- Unmarked Bag of Gems
	[30260]			= true,			-- Voren'thal's Package
	[34426]			= true,			-- Winter Veil Gift
	
}

function AutoOpenItems:Register(event, func)
	self:RegisterEvent(event)
	self[event] = function(...)
		func(...)
	end
end

-- Search through bag for the item ID's and use them

AutoOpenItems:Register('BAG_UPDATE_DELAYED', function(bag)
	
	for bag = 0, 4 do
		for slot = 0, GetContainerNumSlots(bag) do
			local id = GetContainerItemID(bag, slot)
			if id and Whitelist[id] then
				UseContainerItem(bag, slot)
				DEFAULT_CHAT_FRAME:AddMessage("|cFF00FF00Opening : " .. GetContainerItemLink(bag, slot) .. " ID: " .. GetContainerItemID(bag, slot))
				return
			end
		end
	end
end)
