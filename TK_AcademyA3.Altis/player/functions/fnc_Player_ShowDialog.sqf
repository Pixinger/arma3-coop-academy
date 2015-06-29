// [Text, Enabled, Visible, SQF-Datei]
private["_buttons"];	
_buttons = [		
	["Barracks", true, true, fnc_Player_BarracksScript],
	["Virtual Arsenal", adminVirtualArsenal, true, fnc_Player_VirtualArsenalScript],
	["Teleport", adminPlayerTeleport, true, fnc_Player_TeleportScript],
	["Garage - Air", true, true, fnc_Player_GarageAirScript],
	["Garage - Sea", true, true, fnc_Player_GarageSeaScript],
	["Garage - Wheeled", true, true, fnc_Player_GarageWheeledScript],
	["Garage - Tracked", true, true, fnc_Player_GarageTrackedScript]
];

[_buttons, "Administrator"] execVM "maindialog_showtemplate.sqf";