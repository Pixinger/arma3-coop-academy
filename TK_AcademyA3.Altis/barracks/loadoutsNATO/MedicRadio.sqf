private["_result"];
_result = [
	/* Goggles */
	"", //G_Tactical_Clear

	/* Headgear */
	"H_HelmetB_light",

	/* Binoculars */
	"Rangefinder",

	/* Nightvision */
	"NVGoggles",

	/* Linked Items */
	[
		"ItemMap",
		"ItemWatch",
		"ItemCompass",
		"ItemGps"
	],

	/* Primary Weapon */
	[
		"arifle_Mk20C_plain_F",
		/* Primary weapon Magazine */
		"30Rnd_556x45_Stanag_Tracer_Red",
		/* Primary Weapon Items */
		["acc_pointer_IR","optic_MRCO"]
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
		"hgun_P07_F",
		/* Handgun Weapon Magazine */
		"16Rnd_9x21_Mag",
		/* Handgun Weapon Items */
		[]
	],

	/* Uniform */
	[
		"U_B_CombatUniform_mcam",
		/* Uniform-Weapons */
		[],
		/* Uniform-Magazines */
		[],
		/* Uniform-Items */
		[
			"ItemRadio","FirstAidKit","FirstAidKit"
		]
	],

	/* Vest */
	[
		"V_PlateCarrier1_rgr",
		/* Vest-Weapons */
		[
			"SmokeShell","SmokeShell","SmokeShell","SmokeShell",
			"SmokeShellPurple","SmokeShellPurple","SmokeShellPurple","SmokeShellPurple",
			"SmokeShellGreen","SmokeShellRed"
		],
		/* Vest-Magazines */
		[
			"30Rnd_556x45_Stanag_Tracer_Red","30Rnd_556x45_Stanag_Tracer_Red","30Rnd_556x45_Stanag_Tracer_Red","30Rnd_556x45_Stanag_Tracer_Red"
			,"30Rnd_556x45_Stanag_Tracer_Red","30Rnd_556x45_Stanag_Tracer_Red","30Rnd_556x45_Stanag_Tracer_Red","30Rnd_556x45_Stanag_Tracer_Red",
			"16Rnd_9x21_Mag","16Rnd_9x21_Mag"
		],
		/* Vest-Items */
		[
		]
	],

	/* Backpack */
	[
		"tf_rt1523g_big",
		/* Backpack-Weapons */
		[],
		/* Backpack-Magazines */
		[],
		/* Backpack-Items */
		[
			"Medikit","FirstAidKit","FirstAidKit","muzzle_snds_M"
		]
	],

	/* Code */
	"player setVariable [""ACE_isEOD"", false, true];player setVariable [""ACE_IsEngineer"", false, true];player setVariable [""ace_medical_medicclass"",2, true];"
];

_result;