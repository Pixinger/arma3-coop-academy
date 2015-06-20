// [Text, Enabled, Visible, SQF-Datei]
private["_buttons"];	
_buttons = [		
	["Barracks", true, true, fnc_Player_BarracksScript],
	["Virtual Arsenal", adminVirtualArsenal, true, fnc_Player_VirtualArsenalScript],
	["Teleport", adminPlayerTeleport, true, fnc_Player_TeleportScript]
];

[_buttons, "Administrator"] execVM "maindialog_showtemplate.sqf";