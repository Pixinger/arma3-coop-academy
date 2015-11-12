// [Text, Enabled, Visible, SQF-Datei]
private["_buttons"];	
_buttons = [		
	["Toggle GPS", true, true, fnc_Admin_ToggleGpsScript],
	["Toggle TFAR ZeusFix", true, true, fnc_Admin_ToggleZeusFixScript],
	["Toggle Player Barracks", true, true, fnc_Admin_ToggleBarracksScript],
	["Toggle Player Virtual Arsenal", true, true, fnc_Admin_ToggleVirtualArsenalScript],
	["Toggle Player Teleport", true, true, fnc_Admin_TogglePlayerTeleportScript],
	["Toggle Player Side", true, true, fnc_Admin_TogglePlayerSideScript],
	["Teleport", true, true, fnc_Admin_TeleportScript],
	["Teleport target", true, true, fnc_Admin_TeleportTargetScript],
	["Assign Curator", true, true, fnc_Admin_CuratorAssignScript],
	["Regroup", true, true, fnc_Admin_RegroupScript]
];

[_buttons, "Administrator"] execVM "maindialog_showtemplate.sqf";