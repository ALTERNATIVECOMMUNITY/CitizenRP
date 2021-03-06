-- **THIS IS OPTIONAL** - HERE IS A LIST OF MOST OF THE VANILLA VEHICLES. THIS IS ONLY NEEDED IF YOU WANT TO USE 'Config.UseDatabaseVehiclesTable' AND YOU DO NOT ALREADY HAVE A 'vehicles' TABLE IN THE DATABASE.
-- YOU CAN INSERT THEM INTO YOUR DATABASE AND THEN ADD MORE CUSTOM VEHICLES MANUALLY **IF** YOU HAVE 'Config.UseDatabaseVehiclesTable' ENABLED.
-- IF YOU USE THIS, MAKE SURE TO EDIT THE (PRICE / CATEGORY / GARAGE TAX) VALUES TO YOUR SERVERS NEEDS.
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `garage_tax`) VALUES
	('Hearse', 'Romero', 30000, 'sedans', 0),
	('Adder', 'adder', 600000, 'hyper', 0),
	('Akuma', 'akuma', 20000, 'motorcycles', 0),
	('Alpha', 'alpha', 120000, 'sports', 0),
	('Asea', 'asea', 40000, 'sedans', 0),
	('Asterope', 'asterope', 50000, 'sedans', 0),
	('Autarch', 'autarch', 600000, 'hyper', 0),
	('Avarus', 'avarus', 10000, 'motorcycles', 0),
	('Bagger', 'bagger', 10000, 'motorcycles', 0),
	('Baller', 'baller', 45000, 'suvs', 0),
	('Baller Sport', 'baller2', 50000, 'suvs', 0),
	('Baller Sport Custom', 'baller3', 60000, 'suvs', 0),
	('Baller Sport Custom LWB', 'baller4', 65000, 'suvs', 0),
	('Banshee', 'banshee', 120000, 'sports', 0),
	('Banshee 900R', 'banshee2', 300000, 'super', 0),
	('Bati 801', 'bati', 50000, 'motorcycles', 0),
	('Bati 801RR', 'bati2', 50000, 'motorcycles', 0),
	('Bestia GTS', 'bestiagts', 120000, 'sports', 0),
	('BF400', 'bf400', 15000, 'motorcycles', 0),
	('Bf Injection', 'bfinjection', 20000, 'offroad', 0),
	('Bifta', 'bifta', 20000, 'offroad', 0),
	('Bison', 'bison', 20000, 'vans', 0),
	('BJXL', 'bjxl', 50000, 'suvs', 0),
	('Blade', 'blade', 50000, 'muscle', 0),
	('Blazer', 'blazer', 10000, 'offroad', 0),
	('Blazer Sport', 'blazer4', 12000, 'offroad', 0),
	('Blista', 'blista', 5000, 'compacts', 0),
	('Blista 2', 'blista2', 5000, 'compacts', 0),
	('Space Monkey Blista', 'blista3', 9000, 'compacts', 0),
	('BMX', 'bmx', 0, 'bicycles', 0),
	('Bobcat XL', 'bobcatxl', 20000, 'vans', 0),
	('Bodhi', 'bodhi2', 20000, 'offroad', 0),
	('Brawler', 'brawler', 20000, 'offroad', 0),
	('Brioso R/A', 'brioso', 5000, 'compacts', 0),
	('Btype', 'btype', 40000, 'sportsclassics', 0),
	('Btype Hotroad', 'btype2', 40000, 'sportsclassics', 0),
	('Btype Luxe', 'btype3', 40000, 'sportsclassics', 0),
	('Buccaneer', 'buccaneer', 50000, 'muscle', 0),
	('Buccaneer Rider', 'buccaneer2', 50000, 'muscle', 0),
	('Buffalo', 'buffalo', 60000, 'sedans', 0),
	('Buffalo S', 'buffalo2', 60000, 'sedans', 0),
	('Buffallo 3', 'buffalo3', 60000, 'sedans', 0),
	('Bullet', 'bullet', 120000, 'sports', 0),
	('Burrito', 'burrito3', 10000, 'vans', 0),
	('Golf Caddy', 'caddy', 5000, 'utility', 0),
	('Camper', 'camper', 5000, 'vans', 0),
	('Carbonizzare', 'carbonizzare', 300000, 'super', 0),
	('Carbon RS', 'carbonrs', 50000, 'motorcycles', 0),
	('Casco', 'casco', 40000, 'sportsclassics', 0),
	('Cavalcade', 'cavalcade', 50000, 'suvs', 0),
	('Cavalcade Sport', 'cavalcade2', 55000, 'suvs', 0),
	('Cheburek', 'cheburek', 30000, 'sportsclassics', 0),
	('Cheetah', 'cheetah', 600000, 'hyper', 0),
	('Cheetah Classic', 'cheetah2', 40000, 'sportsclassics', 0),
	('Chimera', 'chimera', 15000, 'motorcycles', 0),
	('Chino', 'chino', 50000, 'muscle', 0),
	('Cognoscenti', 'cog55', 70000, 'sedans', 0),
	('Cognoscenti Cabrio', 'cogcabrio', 60000, 'coupes', 0),
	('Cognoscenti LWB', 'cognoscenti', 80000, 'sedans', 0),
	('Comet', 'comet2', 280000, 'super', 0),
	('Comet Retro', 'comet3', 120000, 'sports', 0),
	('Comet 5', 'comet5', 300000, 'super', 0),
	('Contender', 'contender', 50000, 'suvs', 0),
	('Coquette', 'coquette', 300000, 'super', 0),
	('Coquette Classic', 'coquette2', 40000, 'sportsclassics', 0),
	('Coquette BlackFin', 'coquette3', 50000, 'muscle', 0),
	('Cruiser', 'cruiser', 500, 'bicycles', 0),
	('Cyclone', 'cyclone', 300000, 'super', 0),
	('Daemon', 'daemon', 10000, 'motorcycles', 0),
	('Daemon High', 'daemon2', 15000, 'motorcycles', 0),
	('Defiler', 'defiler', 25000, 'motorcycles', 0),
	('Dilettante', 'dilettante', 5000, 'compacts', 0),
	('Dloader', 'dloader', 20000, 'offroad', 0),
	('Dominator', 'dominator', 50000, 'muscle', 0),
	('Dominator Racecar', 'dominator2', 50000, 'muscle', 0),
	('Double T', 'double', 25000, 'motorcycles', 0),
	('Dubsta', 'dubsta', 45000, 'suvs', 0),
	('Dubsta Luxuary', 'dubsta2', 55000, 'suvs', 0),
	('Dubsta 6x6', 'dubsta3', 80000, 'suvs', 0),
	('Dukes', 'dukes', 50000, 'muscle', 0),
	('Dune Buggy', 'dune', 20000, 'offroad', 0),
	('Elegy ', 'elegy', 120000, 'sports', 0),
	('Elegy 2', 'elegy2', 120000, 'sports', 0),
	('Ellie', 'ellie', 50000, 'muscle', 0),
	('Emperor', 'emperor', 60000, 'sedans', 0),
	('Emperor 2', 'emperor2', 60000, 'sedans', 0),
	('Enduro', 'enduro', 10000, 'motorcycles', 0),
	('Entity2', 'entity2', 630000, 'hyper', 0),
	('Entity XF', 'entityxf', 600000, 'hyper', 0),
	('Esskey', 'esskey', 15000, 'motorcycles', 0),
	('Exemplar', 'exemplar', 70000, 'sedans', 0),
	('F620', 'f620', 300000, 'super', 0),
	('Faction', 'faction', 50000, 'muscle', 0),
	('Faction Rider', 'faction2', 50000, 'muscle', 0),
	('Faction XL', 'faction3', 50000, 'muscle', 0),
	('Fagaloa', 'fagaloa', 40000, 'sportsclassics', 0),
	('Faggio', 'faggio', 3000, 'motorcycles', 0),
	('Vespa', 'faggio2', 2000, 'motorcycles', 0),
	('Faggio Mod', 'faggio3', 3000, 'motorcycles', 0),
	('Felon', 'felon', 60000, 'sedans', 0),
	('Felon GT', 'felon2', 60000, 'coupes', 0),
	('Feltzer', 'feltzer2', 300000, 'super', 0),
	('Fixter', 'fixter', 500, 'bicycles', 0),
	('Flash GT', 'flashgt', 120000, 'sports', 0),
	('Flatbed', 'flatbed', 10000, 'utility', 0),
	('FMJ', 'fmj', 300000, 'super', 0),
	('Fhantom', 'fq2', 50000, 'suvs', 0),
	('Fugitive', 'fugitive', 60000, 'sedans', 0),
	('Furore GT', 'furoregt', 300000, 'super', 0),
	('Fusilade', 'fusilade', 80000, 'sports', 0),
	('Futo', 'futo', 5000, 'compacts', 0),
	('Gargoyle', 'gargoyle', 10000, 'motorcycles', 0),
	('Gauntlet', 'gauntlet', 50000, 'muscle', 0),
	('Gauntlet 2', 'gauntlet2', 50000, 'muscle', 0),
	('GB200', 'gb200', 120000, 'sports', 0),
	('Gang Burrito', 'gburrito', 10000, 'vans', 0),
	('Burrito', 'gburrito2', 10000, 'vans', 0),
	('Glendale', 'glendale', 50000, 'sedans', 0),
	('GP1', 'gp1', 300000, 'super', 0),
	('Grabger', 'granger', 50000, 'suvs', 0),
	('Gresley', 'gresley', 50000, 'suvs', 0),
	('GT 500', 'gt500', 40000, 'sportsclassics', 0),
	('Guardian', 'guardian', 20000, 'utility', 0),
	('Habanero', 'habanero', 50000, 'suvs', 0),
	('Hakuchou', 'hakuchou', 25000, 'motorcycles', 0),
	('Hakuchou Sport 22', 'hakuchou2', 40000, 'motorcycles', 0),
	('Hermes', 'hermes', 50000, 'muscle', 0),
	('Hexer', 'hexer', 15000, 'motorcycles', 0),
	('Hotknife', 'hotknife', 50000, 'muscle', 0),
	('Huntley S', 'huntley', 50000, 'suvs', 0),
	('Hustler', 'hustler', 50000, 'muscle', 0),
	('Infernus', 'infernus', 300000, 'super', 0),
	('Infernus Classic', 'infernus2', 300000, 'super', 0),
	('Ingot', 'ingot', 50000, 'sedans', 0),
	('Innovation', 'innovation', 15000, 'motorcycles', 0),
	('Intruder', 'intruder', 50000, 'sedans', 0),
	('Issi', 'issi2', 5000, 'compacts', 0),
	('Issi Mini', 'issi3', 6000, 'compacts', 0),
	('Itali GTB', 'italigtb', 300000, 'super', 0),
	('Itali GTB Custom', 'italigtb2', 300000, 'super', 0),
	('Itali GTO', 'italigto', 300000, 'super', 0),
	('Jackal', 'jackal', 60000, 'sedans', 0),
	('JB700', 'jb700', 40000, 'sportsclassics', 0),
	('Jester', 'jester', 80000, 'sports', 0),
	('Jester(Racecar)', 'jester2', 300000, 'super', 0),
	('Jester3', 'jester3', 120000, 'sports', 0),
	('Journey', 'journey', 5000, 'vans', 0),
	('Kalahari', 'kalahari', 20000, 'offroad', 0),
	('Kamacho', 'kamacho', 20000, 'offroad', 0),
	('Khamelion', 'khamelion', 120000, 'sports', 0),
	('Kuruma', 'kuruma', 70000, 'sedans', 0),
	('Landstalker', 'landstalker', 50000, 'suvs', 0),
	('RE-7B', 'le7b', 300000, 'super', 0),
	('Lurcher', 'lurcher', 50000, 'muscle', 0),
	('Lynx', 'lynx', 300000, 'super', 0),
	('Mamba', 'mamba', 45000, 'sportsclassics', 0),
	('Manana', 'manana', 40000, 'sportsclassics', 0),
	('Manchez', 'manchez', 15000, 'motorcycles', 0),
	('Massacro', 'massacro', 120000, 'sports', 0),
	('Massacro(Racecar)', 'massacro2', 300000, 'super', 0),
	('Mesa', 'mesa', 50000, 'suvs', 0),
	('Mesa Trail', 'mesa3', 20000, 'offroad', 0),
	('Michelli', 'michelli', 40000, 'sportsclassics', 0),
	('Minivan', 'minivan', 10000, 'vans', 0),
	('Monroe', 'monroe', 40000, 'sportsclassics', 0),
	('Moonbeam', 'moonbeam', 10000, 'vans', 0),
	('Moonbeam Rider', 'moonbeam2', 10000, 'vans', 0),
	('Mule', 'mule', 60000, 'vans', 0),
	('Nemesis', 'nemesis', 15000, 'motorcycles', 0),
	('Neon', 'neon', 60000, 'sedans', 0),
	('Nero', 'nero', 620000, 'hyper', 0),
	('Nero custom', 'nero2', 650000, 'hyper', 0),
	('Nightblade', 'nightblade', 15000, 'motorcycles', 0),
	('Nightshade', 'nightshade', 50000, 'muscle', 0),
	('9F', 'ninef', 300000, 'super', 0),
	('9F Cabrio', 'ninef2', 300000, 'super', 0),
	('Omnis', 'omnis', 120000, 'sports', 0),
	('Oracle', 'oracle', 60000, 'sedans', 0),
	('Oracle XS', 'oracle2', 60000, 'sedans', 0),
	('Osiris', 'osiris', 600000, 'hyper', 0),
	('Panto', 'panto', 5000, 'compacts', 0),
	('Paradise', 'paradise', 10000, 'vans', 0),
	('Pariah', 'pariah', 300000, 'super', 0),
	('Patriot', 'patriot', 50000, 'suvs', 0),
	('PCJ-600', 'pcj', 17000, 'motorcycles', 0),
	('Penetrator', 'penetrator', 300000, 'super', 0),
	('Penumbra', 'penumbra', 120000, 'sports', 0),
	('Peyote', 'peyote', 40000, 'sportsclassics', 0),
	('Pfister', 'pfister811', 300000, 'super', 0),
	('Phoenix', 'phoenix', 50000, 'muscle', 0),
	('Picador', 'picador', 50000, 'muscle', 0),
	('Pigalle', 'pigalle', 40000, 'sportsclassics', 0),
	('Prairie', 'prairie', 5000, 'compacts', 0),
	('Premier', 'premier', 60000, 'sedans', 0),
	('Primo', 'primo', 60000, 'sedans', 0),
	('Primo Custom', 'primo2', 65000, 'sedans', 0),
	('X80 Proto', 'prototipo', 600000, 'hyper', 0),
	('Radius', 'radi', 50000, 'suvs', 0),
	('raiden', 'raiden', 60000, 'sedans', 0),
	('Rancher XL', 'rancherxl', 40000, 'suvs', 0),
	('Rapid GT', 'rapidgt', 120000, 'sports', 0),
	('Rapid GT Convertible', 'rapidgt2', 120000, 'sports', 0),
	('Rapid GT3', 'rapidgt3', 40000, 'sportsclassics', 0),
	('Rat Loader', 'ratloader', 50000, 'muscle', 0),
	('Rat Loader Custom', 'ratloader2', 50000, 'muscle', 0),
	('Reaper', 'reaper', 300000, 'super', 0),
	('Rebel old', 'rebel', 20000, 'offroad', 0),
	('Rebel', 'rebel2', 20000, 'offroad', 0),
	('Regina', 'regina', 60000, 'sedans', 0),
	('Retinue', 'retinue', 40000, 'sportsclassics', 0),
	('Rhapsody', 'rhapsody', 5000, 'compacts', 0),
	('riata', 'riata', 20000, 'offroad', 0),
	('Rocoto', 'rocoto', 50000, 'suvs', 0),
	('Ruffian', 'ruffian', 18000, 'motorcycles', 0),
	('Ruiner', 'ruiner', 50000, 'muscle', 0),
	('Rumpo', 'rumpo', 20000, 'vans', 0),
	('Rumpo Trail', 'rumpo3', 20000, 'vans', 0),
	('Sabre Turbo', 'sabregt', 50000, 'muscle', 0),
	('Sabre GT', 'sabregt2', 50000, 'muscle', 0),
	('Sanchez', 'sanchez', 15000, 'motorcycles', 0),
	('Sanchez Sport', 'sanchez2', 15000, 'motorcycles', 0),
	('Sanctus', 'sanctus', 15000, 'motorcycles', 0),
	('Sandking LWB', 'sandking', 20000, 'offroad', 0),
	('Sandking ', 'sandking2', 20000, 'offroad', 0),
	('Savestra', 'savestra', 40000, 'sportsclassics', 0),
	('SC 1', 'sc1', 300000, 'super', 0),
	('Schafter', 'schafter2', 60000, 'sedans', 0),
	('Schafter V12', 'schafter3', 80000, 'sedans', 0),
	('Schafter V12 LWB', 'schafter4', 80000, 'sedans', 0),
	('Schlagen GT', 'schlagen', 300000, 'super', 0),
	('Scorcher', 'scorcher', 500, 'bicycles', 0),
	('Seminole', 'seminole', 50000, 'suvs', 0),
	('Sentinel', 'sentinel', 60000, 'coupes', 0),
	('Sentinel XS', 'sentinel2', 60000, 'coupes', 0),
	('Sentinel Classic', 'sentinel3', 40000, 'sportsclassics', 0),
	('Serrano', 'serrano', 50000, 'suvs', 0),
	('Seven 70', 'seven70', 300000, 'super', 0),
	('ETR1', 'sheava', 120000, 'sports', 0),
	('Shotaro Concept', 'shotaro', 30000, 'motorcycles', 0),
	('Slam Van', 'slamvan', 50000, 'muscle', 0),
	('Slam Van LostMC', 'slamvan2', 50000, 'muscle', 0),
	('Slam Van Custom', 'slamvan3', 50000, 'muscle', 0),
	('Specter', 'specter', 280000, 'super', 0),
	('Specter Custom', 'specter2', 300000, 'super', 0),
	('Stafford', 'stafford', 40000, 'sportsclassics', 0),
	('Stalion', 'stalion', 50000, 'muscle', 0),
	('Stalion Racecar', 'stalion2', 50000, 'muscle', 0),
	('Stanier', 'stanier', 60000, 'sedans', 0),
	('Stinger', 'stinger', 40000, 'sportsclassics', 0),
	('Stinger GT', 'stingergt', 40000, 'sportsclassics', 0),
	('Streiter', 'streiter', 50000, 'suvs', 0),
	('Stretch', 'stretch', 40000, 'sedans', 0),
	('Sultan', 'sultan', 70000, 'sedans', 0),
	('Sultan RS', 'sultanrs', 120000, 'sports', 0),
	('Super Diamond', 'superd', 60000, 'sedans', 0),
	('Surano', 'surano', 300000, 'super', 0),
	('Surfer', 'surfer', 10000, 'vans', 0),
	('Surge', 'surge', 10000, 'compacts', 0),
	('Swinger', 'swinger', 40000, 'sportsclassics', 0),
	('T20', 't20', 600000, 'hyper', 0),
	('Taco Truck', 'taco', 10000, 'utility', 0),
	('Tailgater', 'tailgater', 60000, 'sedans', 0),
	('Taipan', 'taipan', 600000, 'hyper', 0),
	('Tampa', 'tampa', 50000, 'muscle', 0),
	('Drift Tampa', 'tampa2', 50000, 'sports', 0),
	('Taxi', 'taxi', 10000, 'utility', 0),
	('Tempesta', 'tempesta', 300000, 'super', 0),
	('Tezeract', 'tezeract', 600000, 'hyper', 0),
	('Thrust', 'thrust', 10000, 'motorcycles', 0),
	('Torero', 'torero', 40000, 'sportsclassics', 0),
	('Tornado', 'tornado', 30000, 'sportsclassics', 0),
	('Tornado2', 'tornado2', 30000, 'sportsclassics', 0),
	('Tornado3', 'tornado3', 30000, 'sportsclassics', 0),
	('Tornado4', 'tornado4', 30000, 'sportsclassics', 0),
	('Tornado5', 'tornado5', 30000, 'sportsclassics', 0),
	('Tornado Hotrod', 'tornado6', 70000, 'sportsclassics', 0),
	('Toros', 'toros', 80000, 'suvs', 0),
	('Whippet', 'tribike', 500, 'bicycles', 0),
	('Endurex', 'tribike2', 500, 'bicycles', 0),
	('TriBike', 'tribike3', 500, 'bicycles', 0),
	('Trophy Truck', 'trophytruck', 20000, 'offroad', 0),
	('Trophy Truck Limited', 'trophytruck2', 20000, 'offroad', 0),
	('Tropos', 'tropos', 120000, 'sports', 0),
	('Turismo Classic', 'turismo2', 300000, 'super', 0),
	('Turismo R', 'turismor', 600000, 'hyper', 0),
	('Tyrant', 'tyrant', 600000, 'hyper', 0),
	('Tyrus', 'tyrus', 600000, 'hyper', 0),
	('Vacca', 'vacca', 300000, 'super', 0),
	('Vader', 'vader', 20000, 'motorcycles', 0),
	('Vagner', 'vagner', 600000, 'hyper', 0),
	('Verlierer', 'verlierer2', 40000, 'sportsclassics', 0),
	('Vigero', 'vigero', 50000, 'muscle', 0),
	('Virgo', 'virgo', 50000, 'muscle', 0),
	('Virgo Custom', 'virgo2', 50000, 'muscle', 0),
	('Virgo Custom 2', 'virgo3', 50000, 'muscle', 0),
	('Viseris', 'viseris', 40000, 'sportsclassics', 0),
	('Visione', 'visione', 300000, 'super', 0),
	('Voltic', 'voltic', 120000, 'sports', 0),
	('Voodoo Custom', 'voodoo', 50000, 'muscle', 0),
	('Voodoo', 'voodoo2', 50000, 'muscle', 0),
	('Vortex', 'vortex', 35000, 'motorcycles', 0),
	('Warrener', 'warrener', 40000, 'sportsclassics', 0),
	('Washington', 'washington', 40000, 'sedans', 0),
	('Windsor', 'windsor', 60000, 'coupes', 0),
	('Windsor Drop', 'windsor2', 60000, 'coupes', 0),
	('Woflsbane', 'wolfsbane', 15000, 'motorcycles', 0),
	('XA-21', 'xa21', 300000, 'super', 0),
	('XLS', 'xls', 50000, 'suvs', 0),
	('Yosemite', 'yosemite', 50000, 'muscle', 0),
	('Youga', 'youga', 10000, 'vans', 0),
	('Youga Luxuary', 'youga2', 10000, 'vans', 0),
	('Z190', 'z190', 40000, 'sportsclassics', 0),
	('Zion', 'zion', 60000, 'coupes', 0),
	('Zion Cabrio', 'zion2', 60000, 'coupes', 0),
	('Zombie', 'zombiea', 15000, 'motorcycles', 0),
	('Zombie Luxuary', 'zombieb', 15000, 'motorcycles', 0),
	('Z-Type', 'ztype', 40000, 'sportsclassics', 0);