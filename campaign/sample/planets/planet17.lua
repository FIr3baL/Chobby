--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Planet config

local function GetPlanet(planetUtilities, planetID)
	
	--local image = planetUtilities.planetImages[math.floor(math.random()*#planetUtilities.planetImages) + 1]
	local image = LUA_DIRNAME .. "images/planets/inferno01.png"
	
	local planetData = {
		name = "Ogurlo",
		startingPlanet = false,
		mapDisplay = {
			x = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][1]) or 0.36,
			y = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][2]) or 0.41,
			image = image,
			size = planetUtilities.PLANET_SIZE_MAP,
		},
		infoDisplay = {
			image = image,
			size = planetUtilities.PLANET_SIZE_INFO,
			backgroundImage = planetUtilities.backgroundImages[math.floor(math.random()*#planetUtilities.backgroundImages) + 1],
			terrainType = "Volcanic",
			radius = "5840 km",
			primary = "Lia-1616",
			primaryType = "L9V",
			milRating = 1,
			feedbackLink = "http://zero-k.info/Forum/Thread/24441",
			text = "I would never have imagined this lava hellscape of a planet to be inhabited, let alone host major defenses. There must be something down there that escaped me, something valuable enough to account for such a military investment."
			,
			extendedText = "Of course someone would use monstrous, fire-spewing Dante striders to defend a place like this. I will need Aspis area shields to deflect the assault, and Racketeer artillery to disarm those Dantes."
		},
		tips = {
			{
				image = "unitpics/shieldarty.png",
				text = [[Racketeers use long range disarm missiles to disable the weapons and abilities of single enemy units. They don't do any real damage so make sure you have other units standing by to destroy the helpless enemy.]]
			},
			{
				image = "unitpics/shieldshield.png",
				text = [[The Aspis area shield projects a larger and more powerful shield than those carried by other Shieldbots. Shields only destroy projectiles that cross their surface so make sure to maintain a safe distance from enemy units. Aspis can morph to and from the Aegis, a slightly more efficient static version.]]
			},
			{
				image = "unitpics/striderdante.png",
				text = [[The Dante's heatrays and napalm rockets are most lethal at close range. Keep your distance until the Dante is disarmed or dead.]]
			},
			{
				image = "LuaUI/Images/ibeam.png",
				text = [[Metal income from extractors is split evenly between teammates, with whoever builds an extractor temporarily recieving a slightly larger share as payment. Reclaim is private though, as is any metal in storage. Mouse over the metal icon at the top of the screen for a detailed breakdown.]]
			},
		},
		gameConfig = {
			mapName = "Violence_4.2",
			playerConfig = {
				startX = 4100,
				startZ = 3100,
				allyTeam = 0,
				commanderParameters = {
					facplop = false,
					defeatIfDestroyedObjectiveID = 2,
				},
				extraUnlocks = {
					"factoryshield",
					"shieldcon",
					"shieldarty",
					"shieldshield",
					"staticshield",
				},
				startUnits = {
					{
						name = "staticmex",
						x = 3912,
						z = 2600,
						facing = 0,
					},
					{
						name = "staticmex",
						x = 4040,
						z = 2904,
						facing = 0,
					},
					{
						name = "staticmex",
						x = 4760,
						z = 3416,
						facing = 0,
					},
					{
						name = "staticmex",
						x = 3928,
						z = 3928,
						facing = 0,
					},
					{
						name = "staticmex",
						x = 4680,
						z = 4680,
						facing = 0,
					},
					{
						name = "staticmex",
						x = 4552,
						z = 4952,
						facing = 0,
					},
					{
						name = "staticmex",
						x = 3464,
						z = 4504,
						facing = 0,
					},
					{
						name = "energygeo",
						x = 3496,
						z = 4152,
						facing = 0,
					},
					{
						name = "energysolar",
						x = 4760,
						z = 3256,
						facing = 0,
					},
					{
						name = "energysolar",
						x = 4872,
						z = 3352,
						facing = 0,
					},
					{
						name = "energysolar",
						x = 3656,
						z = 4040,
						facing = 0,
					},
					{
						name = "energysolar",
						x = 3816,
						z = 3976,
						facing = 0,
					},
					{
						name = "energysolar",
						x = 3480,
						z = 4376,
						facing = 0,
					},
					{
						name = "energysolar",
						x = 4040,
						z = 2776,
						facing = 0,
					},
					{
						name = "energysolar",
						x = 4008,
						z = 2648,
						facing = 0,
					},
					{
						name = "factoryshield",
						x = 4336,
						z = 3104,
						facing = 0,
					},
					{
						name = "turretheavylaser",
						x = 5016,
						z = 4696,
						facing = 0,
					},
					{
						name = "turretlaser",
						x = 4768,
						z = 5152,
						facing = 0,
					},
					{
						name = "turretlaser",
						x = 4912,
						z = 4928,
						facing = 0,
					},
					{
						name = "turretriot",
						x = 3288,
						z = 5112,
						facing = 0,
					},
					{
						name = "turretlaser",
						x = 3488,
						z = 5216,
						facing = 0,
					},
					{
						name = "turretlaser",
						x = 3088,
						z = 5216,
						facing = 0,
					},
					{
						name = "staticradar",
						x = 2944,
						z = 5392,
						facing = 0,
					},
					{
						name = "staticcon",
						x = 4296,
						z = 2952,
						facing = 0,
						commands = {
							{cmdID = planetUtilities.COMMAND.PATROL, pos = {4296, 3000}},
						},
					},
					{
						name = "staticcon",
						x = 4376,
						z = 2952,
						facing = 0,
						commands = {
							{cmdID = planetUtilities.COMMAND.PATROL, pos = {4376, 3000}},
						},
					},
					{
						name = "shieldarty",
						x = 4400,
						z = 3275,
						facing = 0,
					},
					{
						name = "shieldarty",
						x = 4300,
						z = 3275,
						facing = 3,
					},
					{
						name = "shieldraid",
						x = 4400,
						z = 3350,
						facing = 2,
					},
					{
						name = "shieldraid",
						x = 4375,
						z = 3350,
						facing = 1,
					},
					{
						name = "shieldraid",
						x = 4350,
						z = 3350,
						facing = 1,
					},
					{
						name = "shieldraid",
						x = 4325,
						z = 3350,
						facing = 1,
					},
					{
						name = "shieldraid",
						x = 4300,
						z = 3350,
						facing = 1,
					},
					{
						name = "shieldassault",
						x = 4325,
						z = 3425,
						facing = 1,
					},
					{
						name = "shieldassault",
						x = 4375,
						z = 3425,
						facing = 1,
					},
					{
						name = "shieldriot",
						x = 4350,
						z = 3400,
						facing = 1,
					},
					{
						name = "turretlaser",
						x = 2432,
						z = 5216,
						facing = 0,
					},
					{
						name = "turretlaser",
						x = 4144,
						z = 5136,
						facing = 0,
					},
					{
						name = "turretlaser",
						x = 3392,
						z = 4080,
						facing = 0,
					},
				}
			},
			aiConfig = {
				{
					aiLib = "Circuit_difficulty_autofill_ally",
					bitDependant = true,
					--aiLib = "Null AI",
					--bitDependant = false,
					humanName = "Arcadia",
					allyTeam = 0,
					unlocks = {
						"staticmex",
						"staticradar",
						"staticstorage",
						"energysolar",
						"energygeo",
						"staticcon",
						"turretaaclose",
						"turretlaser",
						"turretmissile",
						"turretriot",
						"turretheavylaser",
						"factoryamph",
						"amphcon",
						"amphraid",
						"amphfloater",
						"amphriot",
						"amphbomb",
						"amphaa",
						"factoryveh",
						"vehraid",
						"vehriot",
						"veharty",
						"vehheavyarty",
						"vehaa",
						"planefighter",
						"planeheavyfighter",
						"planescout",
						"bomberprec",
						"bomberriot",
						"bomberdisarm",
					},
					difficultyDependantUnlocks = {
						[2] = {"staticcon"},
						[3] = {"staticcon"},
						[4] = {"staticcon"},
					},
					commander = false,
					startUnits = {
						{
							name = "staticstorage",
							x = 5600,
							z = 2400,
							facing = 0,
						},
						{
							name = "factoryplane",
							x = 2016,
							z = 2848,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 1816,
							z = 2792,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 2712,
							z = 1864,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 2520,
							z = 3368,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 1176,
							z = 3944,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 1232,
							z = 4032,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 1040,
							z = 4176,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 2688,
							z = 3488,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 2816,
							z = 1856,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 2896,
							z = 1664,
							facing = 0,
						},
						{
							name = "turretaaclose",
							x = 2040,
							z = 2648,
							facing = 0,
						},
						{
							name = "turretaaclose",
							x = 1720,
							z = 2968,
							facing = 0,
						},
						{
							name = "turretaaclose",
							x = 2136,
							z = 3016,
							facing = 0,
						},
						{
							name = "energygeo",
							x = 4760,
							z = 3016,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 5064,
							z = 3288,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 5432,
							z = 2424,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 5304,
							z = 2088,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 6040,
							z = 3208,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 5944,
							z = 4392,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 4952,
							z = 3224,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 5416,
							z = 2296,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 5400,
							z = 2152,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 1832,
							z = 2904,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 1912,
							z = 2744,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 5560,
							z = 4488,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 5776,
							z = 4688,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 6016,
							z = 4768,
							facing = 0,
						},
						{
							name = "staticcon",
							x = 5464,
							z = 2584,
							facing = 0,
						},
						{
							name = "staticcon",
							x = 5544,
							z = 2584,
							facing = 0,
						},
						{
							name = "factoryamph",
							x = 5496,
							z = 2712,
							facing = 0,
						},
						{
							name = "staticradar",
							x = 2224,
							z = 2720,
							facing = 0,
						},
						{
							name = "staticradar",
							x = 5264,
							z = 3632,
							facing = 0,
						},
						{
							name = "turretriot",
							x = 7240,
							z = 3800,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 7472,
							z = 3792,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 7200,
							z = 4000,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 6448,
							z = 3280,
							facing = 0,
						},
						{
							name = "bomberprec",
							x = 5918,
							z = 7690,
							facing = 0,
						},
						{
							name = "amphcon",
							x = 7341,
							z = 3269,
							facing = 1,
						},
						{
							name = "amphfloater",
							x = 6029,
							z = 4421,
							facing = 3,
						},
						{
							name = "amphraid",
							x = 4402,
							z = 6153,
							facing = 0,
						},
						{
							name = "amphcon",
							x = 5096,
							z = 3335,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 6728,
							z = 3464,
							facing = 0,
						},
						{
							name = "amphraid",
							x = 6077,
							z = 4353,
							facing = 3,
						},
						{
							name = "turretlaser",
							x = 6496,
							z = 4256,
							facing = 0,
						},
						{
							name = "amphfloater",
							x = 5672,
							z = 3333,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 5472,
							z = 2304,
							facing = 0,
						},
						{
							name = "planescout",
							x = 1978,
							z = 2868,
							facing = 0,
							buildProgress = 0.29409999,
						},
						{
							name = "amphfloater",
							x = 5481,
							z = 2783,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 5024,
							z = 3408,
							facing = 0,
						},
					}
				},
				{
					startX = 8600,
					startZ = 7100,
					aiLib = "Circuit_difficulty_autofill",
					bitDependant = true,
					--aiLib = "Null AI",
					--bitDependant = false,
					humanName = "Antenora",
					commanderParameters = {
						facplop = false,
					},
					allyTeam = 1,
					unlocks = {
						"staticmex",
						"staticradar",
						"staticstorage",
						"energysolar",
						"energygeo",
						"staticcon",
						"turretaaclose",
						"turretlaser",
						"turretmissile",
						"factoryjump",
						"jumpcon",
						"jumpraid",
						"jumparty",
						--"striderhub",
						"striderdante",
					},
					difficultyDependantUnlocks = {
						[2] = {"staticcon"},
						[3] = {"staticcon","factoryjump"},
						[4] = {"staticcon","factoryjump"},
					},
					commanderLevel = 3,
					commander = {
						name = "Alighieri",
						chassis = "recon",
						decorations = {
						  "skin_recon_red",
						},
						modules = {
							"commweapon_heavymachinegun",
							"module_high_power_servos",
							"module_high_power_servos",
							"module_ablative_armor",
							"module_autorepair",
						}
					},
					startUnits = {
						-- Strider Hub and Dante on easy/normal is further forward, hopefully making it more killable.
						{
							name = "striderhub",
							x = 7200,
							z = 7300,
							facing = 3,
							mapMarker = {
								text = "Strider Hub",
								color = "red"
							},
							difficultyAtMost = 2,
						},
						{
							name = "striderdante",
							x = 7050,
							z = 7300,
							facing = 0,
							buildProgress = 0.10,
							difficultyAtLeast = 1,
							difficultyAtMost = 1,
						},
						{
							name = "striderdante",
							x = 7050,
							z = 7300,
							facing = 0,
							buildProgress = 0.35,
							difficultyAtLeast = 2,
							difficultyAtMost = 2,
						},
						{
							name = "turretgauss",
							x = 7000,
							z = 7200,
							facing = 3,
							difficultyAtMost = 2,
						},
						-- Strider Hub and Dante on hard/brutal is further back, and near a Caretaker.
						{
							name = "striderhub",
							x = 7568,
							z = 7648,
							facing = 3,
							mapMarker = {
								text = "Strider Hub",
								color = "red"
							},
							difficultyAtLeast = 3,
						},
						{
							name = "energypylon",
							x = 7580,
							z = 7454,
							facing = 3,
						},
						{
							name = "energypylon",
							x = 8260,
							z = 7120,
							facing = 3,
						},
						{
							name = "energypylon",
							x = 7200,
							z = 7730,
							facing = 3,
						},
						{
							name = "energypylon",
							x = 6920,
							z = 8190,
							facing = 3,
						},
						{
							name = "striderdante",
							x = 7470,
							z = 7640,
							facing = 0,
							buildProgress = 0.60,
							difficultyAtLeast = 3,
							difficultyAtMost = 3,
						},
						{
							name = "striderdante",
							x = 7470,
							z = 7640,
							facing = 0,
							buildProgress = 0.85,
							difficultyAtLeast = 4,
							difficultyAtMost = 4,
						},
						{
							name = "turretgauss",
							x = 7496,
							z = 7496,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "turretgauss",
							x = 7320,
							z = 7656,
							facing = 3,
							difficultyAtLeast = 3,
						},
						{
							name = "turretlaser",
							x = 3900,
							z = 8250,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 4300,
							z = 8250,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 7688,
							z = 8104,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 7976,
							z = 8312,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 7480,
							z = 7192,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 6728,
							z = 7832,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 6024,
							z = 8024,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 5848,
							z = 6952,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 6120,
							z = 6824,
							facing = 0,
						},
						{
							name = "energygeo",
							x = 6488,
							z = 8328,
							facing = 0,
						},
						{
							name = "factoryjump",
							x = 7960,
							z = 7992,
							facing = 3,
						},
						{
							name = "energysolar",
							x = 7608,
							z = 7208,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 7784,
							z = 8152,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 7880,
							z = 8232,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 6664,
							z = 7944,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 6600,
							z = 8120,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 6136,
							z = 8104,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 6280,
							z = 8216,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 6376,
							z = 6520,
							facing = 2,
						},
						{
							name = "turretlaser",
							x = 5968,
							z = 6960,
							facing = 2,
						},
						{
							name = "turretlaser",
							x = 6064,
							z = 6576,
							facing = 2,
						},
						{
							name = "staticcon",
							x = 7752,
							z = 7784,
							facing = 3,
						},
						{
							name = "turretriot",
							x = 5336,
							z = 8008,
							facing = 3,
						},
						{
							name = "turretlaser",
							x = 5344,
							z = 7824,
							facing = 3,
						},
						{
							name = "turretlaser",
							x = 5280,
							z = 8192,
							facing = 3,
						},
						{
							name = "staticradar",
							x = 5008,
							z = 8304,
							facing = 0,
						},
						{
							name = "jumpcon",
							x = 7415,
							z = 7145,
							facing = 2,
						},
						{
							name = "jumpcon",
							x = 6050,
							z = 6285,
							facing = 2,
						},
						{
							name = "jumpcon",
							x = 6041,
							z = 6996,
							facing = 3,
						},
						{
							name = "turretlaser",
							x = 7984,
							z = 7776,
							facing = 3,
						},
						{
							name = "turretlaser",
							x = 8672,
							z = 6864,
							facing = 3,
						},
						{
							name = "jumpcon",
							x = 6065,
							z = 6986,
							facing = 3,
						},
						{
							name = "turretlaser",
							x = 6368,
							z = 7904,
							facing = 2,
						},
						{
							name = "turretlaser",
							x = 7760,
							z = 8208,
							facing = 2,
						},
						{
							name = "turretlaser",
							x = 7456,
							z = 7136,
							facing = 3,
						},
						{
							name = "jumpcon",
							x = 5810,
							z = 8629,
							facing = 3,
						},
						{
							name = "staticradar",
							x = 6576,
							z = 7872,
							facing = 2,
						},
						{
							name = "jumpraid",
							x = 7472,
							z = 7728,
							facing = 2,
						},
						{
							name = "jumpraid",
							x = 7693,
							z = 7948,
							facing = 3,
						},
						{
							name = "staticmex",
							x = 8056,
							z = 5272,
							facing = 0,
						},
						{
							name = "jumpcon",
							x = 7834,
							z = 7992,
							facing = 3,
						},
						{
							name = "jumpcon",
							x = 7936,
							z = 7992,
							facing = 3,
							buildProgress = 0.0791,
						},
					}
				},
				{
					startX = 8600,
					startZ = 7000,
					aiLib = "Circuit_difficulty_autofill",
					bitDependant = true,
					--aiLib = "Null AI",
					--bitDependant = false,
					humanName = "Caina",
					allyTeam = 1,
					unlocks = {
						"staticmex",
						"staticradar",
						"staticstorage",
						"energysolar",
						"energygeo",
						"staticcon",
						"turretaaclose",
						"turretlaser",
						"turretmissile",
						"turretriot",
						"turretheavylaser",
						"factoryspider",
						"spidercon",
						"spiderscout",
						"spiderassault",
						"spideremp",
						"spiderriot",
						"spiderskirm",
						"spideraa",
						"factoryhover",
						"hovercon",
						"hoverriot",
						"hoverskirm",
						"hoverassault",
                        "hoverheavyraid",
						"hoveraa",
						"factoryplane",
						"planeheavyfighter",
						"planescout",
						"bomberprec",
						"bomberriot",
						"bomberdisarm",
					},
					commander = false,
					startUnits = {
						{
							name = "pw_mstorage2",
							x = 8250,
							z = 4550,
							facing = 0,
							bonusObjectiveID = 3,
							mapMarker = {
								text = "Metal Storage Depot",
								color = "red_small"
							},
						},
						{
							name = "pw_mstorage2",
							x = 4110,
							z = 8250,
							facing = 0,
							bonusObjectiveID = 3,
							mapMarker = {
								text = "Metal Storage Depot",
								color = "red_small"
							},
						},
						{
							name = "staticstorage",
							x = 4900,
							z = 7000,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 8450,
							z = 4200,
							facing = 3,
						},
						{
							name = "staticmex",
							x = 7656,
							z = 6920,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 8520,
							z = 6904,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 8808,
							z = 7064,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 8024,
							z = 6008,
							facing = 0,
						},
						{
							name = "factoryplane",
							x = 6944,
							z = 10016,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 7048,
							z = 10184,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 8248,
							z = 9624,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 6824,
							z = 9288,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 5784,
							z = 10408,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 6768,
							z = 9120,
							facing = 2,
						},
						{
							name = "turretmissile",
							x = 8272,
							z = 9488,
							facing = 2,
						},
						{
							name = "turretmissile",
							x = 8448,
							z = 9488,
							facing = 2,
						},
						{
							name = "turretmissile",
							x = 5520,
							z = 10448,
							facing = 2,
						},
						{
							name = "turretmissile",
							x = 5680,
							z = 10304,
							facing = 2,
						},
						{
							name = "turretaaclose",
							x = 7048,
							z = 9800,
							facing = 2,
						},
						{
							name = "turretaaclose",
							x = 6808,
							z = 10168,
							facing = 2,
						},
						{
							name = "turretaaclose",
							x = 7240,
							z = 10216,
							facing = 2,
						},
						{
							name = "energygeo",
							x = 7864,
							z = 7256,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 6952,
							z = 5832,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 7096,
							z = 10088,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 6936,
							z = 10184,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 8616,
							z = 6920,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 8744,
							z = 6968,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 7640,
							z = 7032,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 6696,
							z = 6040,
							facing = 3,
						},
						{
							name = "turretlaser",
							x = 6720,
							z = 5776,
							facing = 3,
						},
						{
							name = "turretlaser",
							x = 6704,
							z = 5488,
							facing = 3,
						},
						{
							name = "staticcon",
							x = 8328,
							z = 6888,
							facing = 3,
						},
						{
							name = "staticcon",
							x = 8328,
							z = 6792,
							facing = 3,
						},
						{
							name = "factoryspider",
							x = 8184,
							z = 6824,
							facing = 3,
						},
						{
							name = "turretlaser",
							x = 7616,
							z = 4864,
							facing = 2,
						},
						{
							name = "turretlaser",
							x = 8032,
							z = 4800,
							facing = 2,
						},
						{
							name = "turretriot",
							x = 7816,
							z = 4808,
							facing = 2,
						},
						{
							name = "staticradar",
							x = 7344,
							z = 6528,
							facing = 0,
						},
						{
							name = "staticradar",
							x = 7168,
							z = 9888,
							facing = 0,
						},
						{
							name = "spiderassault",
							x = 7961,
							z = 6664,
							facing = 3,
						},
						{
							name = "spidercon",
							x = 8480,
							z = 4887,
							facing = 2,
						},
						{
							name = "bomberprec",
							x = 4764,
							z = 6234,
							facing = 3,
						},
						{
							name = "spidercon",
							x = 5777,
							z = 5807,
							facing = 3,
						},
						{
							name = "spidercon",
							x = 8657,
							z = 4596,
							facing = 1,
						},
						{
							name = "staticradar",
							x = 8832,
							z = 4496,
							facing = 3,
							buildProgress = 0.39989999,
						},
						{
							name = "spidercon",
							x = 7755,
							z = 4552,
							facing = 2,
						},
						{
							name = "staticmex",
							x = 6920,
							z = 5544,
							facing = 0,
						},
						{
							name = "spiderscout",
							x = 7136,
							z = 4840,
							facing = 2,
						},
						{
							name = "turretlaser",
							x = 6912,
							z = 5792,
							facing = 3,
						},
						{
							name = "spidercon",
							x = 6979,
							z = 6102,
							facing = 3,
						},
						{
							name = "spiderscout",
							x = 6335,
							z = 5791,
							facing = 2,
						},
						{
							name = "planescout",
							x = 6906,
							z = 10036,
							facing = 0,
							buildProgress = 0.2352,
						},
						{
							name = "spidercon",
							x = 7962,
							z = 6134,
							facing = 2,
						},
						{
							name = "staticmex",
							x = 8616,
							z = 4440,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 7688,
							z = 4360,
							facing = 0,
						},
						{
							name = "spiderskirm",
							x = 8148,
							z = 6824,
							facing = 3,
							buildProgress = 0.2321,
						},
					}
				},
			},
			defeatConditionConfig = {
				-- Indexed by allyTeam.
				[0] = { },
				[1] = {
					ignoreUnitLossDefeat = false,
					vitalCommanders = false,
					vitalUnitTypes = {
						"striderhub",
						"striderdante",
					},
					loseAfterSeconds = false,
					allyTeamLossObjectiveID = 1,
				},
			},
			objectiveConfig = {
				-- This is just related to displaying objectives on the UI.
				[1] = {
					description = "Destroy all enemy Dantes and the Strider Hub",
				},
				[2] = {
					description = "Protect your Commander",
				},
			},
			bonusObjectiveConfig = {
				[1] = { -- Make an Aspis
					satisfyOnce = true,
					comparisionType = planetUtilities.COMPARE.AT_LEAST,
					targetNumber = 1,
					unitTypes = {
						"shieldshield",
					},
					image = planetUtilities.ICON_DIR .. "shieldshield.png",
					imageOverlay = planetUtilities.ICON_OVERLAY.REPAIR,
					description = "Build an Aspis",
					experience = planetUtilities.BONUS_EXP,
				},
				[2] = { -- Switch to another factory
					satisfyOnce = true,
					comparisionType = planetUtilities.COMPARE.AT_LEAST,
					targetNumber = 1,
					unitTypes = {
						"factorycloak",
						"factoryamph",
						"factorygunship",
						"factoryhover",
						"factoryjump",
						"factoryplane",
						"factoryship",
						"factoryspider",
						"factorytank",
						"factoryveh",
					},
					image = planetUtilities.ICON_DIR .. "factorycloak.png",
					imageOverlay = planetUtilities.ICON_OVERLAY.REPAIR,
					description = "Build a new Factory",
					experience = planetUtilities.BONUS_EXP,
				},
				[3] = { -- Destroy the Metal Storages before 8:00
					satisfyByTime = 480,
					comparisionType = planetUtilities.COMPARE.AT_MOST,
					targetNumber = 0,
					-- See bonusObjectiveID in units table
					image = planetUtilities.ICON_DIR .. "pw_mstorage2.png",
					imageOverlay = planetUtilities.ICON_OVERLAY.ATTACK,
					description = "Destroy the Metal Storage Depots before 8:00",
					experience = planetUtilities.BONUS_EXP,
				},
			}
		},
		completionReward = {
			experience = planetUtilities.MAIN_EXP,
			units = {
				"shieldarty",
				"shieldshield",
				"staticshield",
			},
			modules = {
				"commweapon_personal_shield",
			},
			abilities = {
			},
			codexEntries = {
				"faction_empire",
				"quadrant_inner_bulge",
			},
		},
	}
	
	return planetData
end

return GetPlanet
