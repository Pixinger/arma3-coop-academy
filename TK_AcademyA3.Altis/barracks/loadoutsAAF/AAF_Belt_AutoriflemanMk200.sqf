private["_result"];
_result = [
	/* Goggles */
	"",
	
	/* Headgear */
	"H_HelmetIA_camo",
	
	/* Binoculars */
	"Binocular",
	
	/* Nightvision */
	"NVGoggles_INDEP",
	
	/* Linked Items */
	[
		"ItemMap",
		"ItemWatch",
		"ItemCompass",
		"ItemGps"
	],
	
	/* Primary Weapon */
	[
		"LMG_Mk200_pointer_F", //TODO
		/* Primary weapon Magazine */
		"200Rnd_65x39_cased_Box",
		/* Primary Weapon Items */
		["optic_MRCO","muzzle_snds_H_MG","bipod_03_F_blk"]
	],
	
	/* Secondary Weapon */
	[
		"",
		/* Secondary weapon Magazine */
		"",
		/* Secondary Weapon Items */
		[]
	],
	
	/* Handgun Weapon */
	[
		"hgun_ACPC2_F",
		/* Handgun Weapon Magazine */
		"9Rnd_45ACP_Mag",
		/* Handgun Weapon Items */
		[]
	],
	
	/* Uniform */
	[
		"U_I_CombatUniform_tshirt", 
		/* Uniform-Weapons */
		[], 
		/* Uniform-Magazines */
		[],
		/* Uniform-Items */
		[
			"ItemRadio",
			"AGM_Epipen","AGM_Epipen","AGM_Epipen",
			"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
			"AGM_Morphine","AGM_Morphine","AGM_Morphine",
			"AGM_CableTie","AGM_CableTie","AGM_CableTie","AGM_CableTie"
		]
	],
	
	/* Vest */
	[
		"V_PlateCarrierIA2_dgtl",
		/* Vest-Weapons */
		[
		], 
		/* Vest-Magazines */
		[		
			"200Rnd_65x39_cased_Box","200Rnd_65x39_cased_Box",
			"9Rnd_45ACP_Mag","9Rnd_45ACP_Mag"
		],
		/* Vest-Items */
		[
		]
	],	
	
	/* Backpack */
	[
		"B_AssaultPack_dgtl", 
		/* Backpack-Weapons */
		[
			"SmokeShell","SmokeShell","SmokeShell","SmokeShell","SmokeShell","SmokeShell",
			"SmokeShellGreen","SmokeShellGreen","SmokeShellGreen"
		], 
		/* Backpack-Magazines */
		[	
			"200Rnd_65x39_cased_Box","200Rnd_65x39_cased_Box"
		],
		/* Backpack-Items */
		[
		]
	],
	
	/* Code */
	"_unit setVariable ['AGM_IsEOD', false];_unit setVariable ['AGM_IsMedic', false];"
];

_result;