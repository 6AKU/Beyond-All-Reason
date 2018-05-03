return {
	armsb = {
		acceleration = 0.055,
		brakerate = 1.5,
		buildcostenergy = 7500,
		buildcostmetal = 240,
		buildpic = "ARMSB.DDS",
		buildtime = 8000,
		canfly = true,
		canmove = true,
		cansubmerge = true,
		category = "ALL NOTLAND MOBILE WEAPON NOTSUB ANTIFLAME ANTIEMG ANTILASER VTOL NOTSHIP NOTHOVER",
		collide = true,
		cruisealt = 210,
		description = "Seaplane Bomber",
		energymake = 1.1,
		energyuse = 1.1,
		explodeas = "mediumexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 1050,
		maxslope = 10,
		maxvelocity = 8.91,
		maxwaterdepth = 255,
		name = "Tsunami",
		noautofire = true,
		nochasecategory = "VTOL",
		objectname = "ARMSB",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 455,
		turnrate = 600,
		customparams = {
			
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2",
				"deathceg3",
				"deathceg4",
			},
		},
		sounds = {
			build = "nanlath1",
			canceldestruct = "cancel2",
			repair = "repair1",
			underattack = "warning1",
			working = "reclaim1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "vtolcrmv",
			},
			select = {
				[1] = "seapsel1",
			},
		},
		weapondefs = {
			arm_seaadvbomb = {
				areaofeffect = 128,
				avoidfeature = false,
				burst = 5,
				burstrate = 0.19,
				collidefriendly = false,
				commandfire = false,
				craterareaofeffect = 128,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.7,
				explosiongenerator = "custom:genericshellexplosion-medium-bomb",
				gravityaffected = "true",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "bomb",
				mygravity = 0.4,
				name = "SeaAdvancedBombs",
				noselfdamage = true,
				range = 1280,
				reloadtime = 7,
				soundhit = "xplomed2",
				soundhitwet = "splslrg",
				soundhitwetvolume = 0.5,
				soundstart = "bombrel",
				weapontype = "AircraftBomb",
				damage = {
					antibomber = 67,
					bombers = 5,
					default = 200,
					subs = 5,
				},
				customparams = {
					bar_model = "bombyr.s3o",
					expl_light_color = "1 0.5 0.05",
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "ARM_SEAADVBOMB",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
