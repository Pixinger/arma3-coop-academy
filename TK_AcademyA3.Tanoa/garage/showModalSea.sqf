private["_building"];
_building = _this select 0;

/*-----------------------------------------------------------------	**/
/* Dialog erstellen*/
#include "defines.hpp";
createDialog "PIXLOGISTIC_DIALOG_GARAGE"; 	
 
private["_loadouts"];
_loadouts = [
	["BLU - Speedboat Minigun", "B_Boat_Armed_01_minigun_F"],
	["BLU - Assault Boat", "B_Boat_Transport_01_F"],
	["BLU - Rescue Boat", "B_Lifeboat"],
	["BLU - SDV", "B_SDV_01_F"],
	["BLUG - Assault Boat", "B_G_Boat_Transport_01_F"],
	["OPF - Speedboat HMG	", "O_Boat_Armed_01_hmg_F"],
	["OPF - Assault Boat", "O_Boat_Transport_01_F"],
	["OPF - Rescue Boat", "O_Lifeboat"],
	["OPF - SDV", "O_SDV_01_F"],
	["IND - Speedboat Minigun", "I_Boat_Armed_01_minigun_F"],
	["IND - Assault Boat", "I_Boat_Transport_01_F"],
	["IND - SDV", "I_SDV_01_F"],
	["CIV - Rescue Boat", "C_Rubberboat"],
	["CIV - Motorboat", "C_Boat_Civil_01_F"],
	["CIV - Motorboat (Rescue)", "C_Boat_Civil_01_rescue_F"],
	["CIV - Motorboat (Police)", "C_Boat_Civil_01_police_F"]
];

/*-----------------------------------------------------------------		*/
/* Listbox füllen*/
{
	lbAdd [PIXLOGISTIC_IDC_DIALOG_GARAGE_List, (_x select 0)];
} foreach _loadouts;
lbSetCurSel [PIXLOGISTIC_IDC_DIALOG_GARAGE_List, 0];

/*-----------------------------------------------------------------	*/
/* Dialog anzeigen*/
pixLogisticDialogGarage_ButtonOK = 0;
pixLogisticDialogGarage_Selection = -1;
waitUntil { !dialog };

/*-----------------------------------------------------------------	*/
/* Wenn OK geklickt wurde, die Eingaben verarbeiten*/
if (pixLogisticDialogGarage_ButtonOK == 1) then
{		
	private["_classname"];
	_classname = (_loadouts select pixLogisticDialogGarage_Selection) select 1;

	/* LoadOut zuweisen */
	private["_position"];
	_position = (position player) findEmptyPosition [0, 100, _classname];	
	private["_vehicle"];
	_vehicle = _classname createVehicle _position;
	_vehicle setDir (getDir player);
	player moveInDriver _vehicle;
	player reveal _vehicle;
};
pixLogisticDialogGarage_Selection = nil;