return {
	corcrash = {
		acceleration = 0.12,
		airsightdistance = 800,
		brakerate = 0.564,
		buildcostenergy = 1200,
		buildcostmetal = 120,
		buildpic = "CORCRASH.DDS",
		buildtime = 1900,
		canmove = true,
		category = "KBOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE CANBEUW",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "30.404109954834 37.404109954834 30.404109954834",
		collisionvolumetype = "ell",
		corpse = "DEAD",
		description = "Amphibious Anti-air Kbot",
		energymake = 0.6,
		energyuse = 0.6,
		explodeas = "smallexplosiongeneric-phib",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 580,
		maxslope = 15,
		maxvelocity = 1.783,
		movementclass = "AKBOT2",
		name = "Crasher",
		nochasecategory = "NOTAIR",
		objectname = "CORCRASH",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd-phib",
		sightdistance = 379.60001,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 1.17678,
		turnrate = 1112,
		upright = true,
		customparams = {
			description_long = "The Crasher is a cheap mobile anti air (AA) Kbot, that can easily take down light aircrafts, like scouts, or transporters. Always send a few with your army to protect it from EMP drones/gunships or commander drop tactics. Remember that it has no land-to-land weapons, so it is not able to defend itself. In bigger numbers it can prevent bombing runs. It is able to walk underwater - combine it with amphibious units!",  
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "2.61597442627 -2.06350430908 0.245178222656",
				collisionvolumescales = "30.2125091553 18.4767913818 33.4091796875",
				collisionvolumetype = "Box",
				damage = 448,
				description = "Crasher Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 75,
				object = "CORCRASH_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 274,
				description = "Crasher Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 30,
				object = "2X2A",
                collisionvolumescales = "35.0 4.0 6.0",
                collisionvolumetype = "cylY",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg3",
				"deathceg2",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
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
				[1] = "kbcormov",
			},
			select = {
				[1] = "kbcorsel",
			},
		},
		weapondefs = {
			bogus_missile = {
				areaofeffect = 48,
				avoidfeature = false,
				canattackground = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				name = "Missiles",
				range = 800,
				reloadtime = 0.5,
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				startvelocity = 450,
				tolerance = 9000,
				turnrate = 33000,
				turret = true,
				weaponacceleration = 101,
				weapontimer = 0.1,
				weapontype = "Cannon",
				weaponvelocity = 650,
				damage = {
					default = 0,
				},
			},
			corekbot_missile = {
				areaofeffect = 48,
				avoidfeature = false,
				canattackground = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				cegTag = "missiletrailaa",
				explosiongenerator = "custom:genericshellexplosion-tiny-aa",
				firestarter = 70,
				flighttime = 1.75,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				metalpershot = 0,
				model = "missile",
				name = "Missiles",
				noselfdamage = true,
				range = 790,
				reloadtime = 2,
				smoketrail = false,
				soundhit = "xplosml2",
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "rocklit1",
				startvelocity = 480,
				texture1 = "trans",
				texture2 = "coresmoketrail",
				tolerance = 9000,
				tracks = true,
				turnrate = 63000,
				turret = true,
				weaponacceleration = 200,
				weapontimer = 5,
				weapontype = "MissileLauncher",
				weaponvelocity = 900,
				damage = {
					bombers = 110,
					fighters = 110,
					vtol = 110,
				},
				customparams = {
					bar_model = "cormissile.s3o",
					light_skip = true,		-- used by light_effects widget
					light_color = "1 0.5 0.6",
					expl_light_color = "1 0.4 0.5",
					expl_light_radius_mult = 0.66,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "NOTAIR LIGHTAIRSCOUT",
				def = "BOGUS_MISSILE",
				onlytargetcategory = "VTOL",
			},
			[3] = {
				badtargetcategory = "NOTAIR LIGHTAIRSCOUT",
				def = "COREKBOT_MISSILE",
				onlytargetcategory = "VTOL",
			},
		},
	},
}
