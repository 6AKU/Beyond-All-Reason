-- (note that alldefs_post.lua is still ran afterwards if you change anything there)

-- Special rules:
-- you only need to put the things you want changed in comparison with the regular unitdef. (use the same table structure)
-- since you cant actually remove parameters normally, it will do it when you set string: 'nil' as value
-- normally an empty table as value will be ignored when merging, but not here, it will overwrite what it had with an empty table

customDefs = {}


local scavUnit = {}
for name,uDef in pairs(UnitDefs) do
    scavUnit[#scavUnit+1] = name..'_scav'
end

-- Scav Commanders

customDefs.corcom = {		
	autoheal = 15,
	cloakcost = 100,
	cloakcostmoving = 200,
	explodeas = "hugeexplosiongeneric",
	hidedamage = false,
	idleautoheal = 20,
	mincloakdistance = 20,
	showplayername = false,
	buildoptions = scavUnit,
	workertime = 452,				-- gets multiplied in unitdef_post 
	customparams = {
		iscommander = 'nil',		-- since you cant actually remove parameters normally, it will do it when you set string: 'nil' as value
	},
	featuredefs = {
		dead = {
			resurrectable = 0,
		},
	},
	weapondefs = {
		disintegrator = {
			commandfire = false,
			damage = {
				default = 140,
			},
		},
	},
	-- Extra Shield
	weapons = {
			[4] = {
				def = "REPULSOR1",
			},
		},
}

customDefs.armcom = {		
	autoheal = 15,
	cloakcost = 100,
	cloakcostmoving = 200,
	explodeas = "hugeexplosiongeneric",
	hidedamage = false,
	idleautoheal = 20,
	mincloakdistance = 20,
	showplayername = false,
	buildoptions = scavUnit,
	workertime = 452,				-- gets multiplied in unitdef_post 
	customparams = {
		iscommander = 'nil',		-- since you cant actually remove parameters normally, it will do it when you set string: 'nil' as value
	},
	featuredefs = {
		dead = {
			resurrectable = 0,
		},
	},
	weapondefs = {
		disintegrator = {
			commandfire = false,
			damage = {
				default = 140,
			},
		},
	},
	-- Extra Shield
	--weapons = {
	--		[4] = {
	--			def = "REPULSOR1",
	--		},
	--	},
}

-- Cloaked Radar

customDefs.armrad = {
	cloakcost = 6,
	mincloakdistance = 72,
}

customDefs.armarad = {
	cloakcost = 12,
	mincloakdistance = 144,
}

customDefs.corrad = {
	cloakcost = 6,
	mincloakdistance = 72,
}

customDefs.corarad = {
	cloakcost = 12,
	mincloakdistance = 144,
}


-- Cloaked Jammers

customDefs.armjamt = {
	cloakcost = 10,
	mincloakdistance = 144,
--	radardistancejam = 700,
	sightdistance = 250,
}

customDefs.armveil = {
	cloakcost = 25,
	mincloakdistance = 288,
--	radardistancejam = 900,
	sightdistance = 310,
}

customDefs.corjamt = {
	cloakcost = 10,
	mincloakdistance = 144,
--	radardistancejam = 700,
	sightdistance = 250,
}

customDefs.corshroud = {
	cloakcost = 25,
	mincloakdistance = 288,
--	radardistancejam = 900,
	sightdistance = 310,
}

-- Cloaked Constructors

customDefs.correcl = {
	cloakcost = 3,
	mincloakdistance = 72,
}

customDefs.armrecl = {
	cloakcost = 3,
	mincloakdistance = 72,
}

customDefs.corck = {
	cloakcost = 3,
	mincloakdistance = 72,
}

customDefs.corcv = {
	cloakcost = 3,
	mincloakdistance = 72,
}

customDefs.cormuskrat = {
	cloakcost = 3,
	mincloakdistance = 72,
}

customDefs.corack = {
	cloakcost = 3,
	mincloakdistance = 72,
}

customDefs.coracv = {
	cloakcost = 3,
	mincloakdistance = 72,
}

customDefs.corca = {
	cloakcost = 3,
	mincloakdistance = 72,
}

customDefs.coraca = {
	cloakcost = 3,
	mincloakdistance = 72,
}

customDefs.armck = {
	cloakcost = 3,
	mincloakdistance = 72,
}

customDefs.armcv = {
	cloakcost = 3,
	mincloakdistance = 72,
}

customDefs.armbeaver = {
	cloakcost = 3,
	mincloakdistance = 72,
}

customDefs.armack = {
	cloakcost = 3,
	mincloakdistance = 72,
}

customDefs.armacv = {
	cloakcost = 3,
	mincloakdistance = 72,
}

customDefs.armca = {
	cloakcost = 3,
	mincloakdistance = 72,
}

customDefs.armaca = {
	cloakcost = 3,
	mincloakdistance = 72,
}

-- Cloaked Units

customDefs.corak = {
	cloakcost = 3,
	mincloakdistance = 72,
}

customDefs.corgator = {
	cloakcost = 6,
	mincloakdistance = 144,
}

customDefs.cortermite = {
	cloakcost = 12,
	mincloakdistance = 144,
}

customDefs.cormando = {
	cloakcost = 12,
	mincloakdistance = 144,
}

customDefs.corhrk = {
	cloakcost = 12,
	mincloakdistance = 160,
}

customDefs.armzeus = {
	cloakcost = 12,
	mincloakdistance = 144,
}

-- Cloaked Defenses

customDefs.corllt = {
	cloakcost = 6,
	mincloakdistance = 144,
}

customDefs.corhllt = {
 	cloakcost = 9,
 	mincloakdistance = 144,
 }

customDefs.corhlt = {
	cloakcost = 18,
	mincloakdistance = 288,
}

customDefs.armhlt = {
	cloakcost = 18,
	mincloakdistance = 288,
}

customDefs.armllt = {
	cloakcost = 6,
	mincloakdistance = 144,
}

customDefs.armnanotc = {
	cloakcost = 6,
	mincloakdistance = 72,
}

customDefs.cornanotc = {
	cloakcost = 6,
	mincloakdistance = 72,
}

-- customDefs.armbeamer = {
-- 	cloakcost = 6,
-- 	mincloakdistance = 144,
-- }

customDefs.corvipe = {
	cloakcost = 20,
	mincloakdistance = 288,
}

customDefs.cortoast = {
	cloakcost = 20,
	mincloakdistance = 288,
}

customDefs.corint = {
	cloakcost = 75,
	mincloakdistance = 432,
}

customDefs.cordoom = {
	cloakcost = 50,
	mincloakdistance = 432,
}

customDefs.armrectr = {
	workertime = 1333, 	-- gets multiplied in unitdef_post 
}

customDefs.cornecro = {
	workertime = 1333,		-- gets multiplied in unitdef_post 
}