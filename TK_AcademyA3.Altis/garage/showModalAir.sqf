private["_building"];
_building = _this select 0;

/*-----------------------------------------------------------------	**/
/* Dialog erstellen*/
#include "defines.hpp";
createDialog "PIXLOGISTIC_DIALOG_GARAGE"; 	

private["_loadouts"];
_loadouts = [
	["BLU - MH-9 Hummingbird", "B_Heli_Light_01_F"],
	["BLU - AH-9 Pawnee", "B_Heli_Light_01_armed_F"],
	["BLU - AH-99 Blackfoot", "B_Heli_Attack_01_F"],
	["BLU - UH-80 Ghost Hawk", "B_Heli_Transport_01_F"],
	["BLU - UH-80 Ghost Hawk (Camo)", "B_Heli_Transport_01_camo_F"],
	["BLU - PO-30 Orca", "O_Heli_Light_02_F"],
	["OPF - PO-30 Orca (Black)", "O_Heli_Light_02_unarmed_F"],
	["OPF - Mi-48 Kajman", "O_Heli_Attack_02_F"],
	["OPF - Mi-48 Kajman (Black)", "O_Heli_Attack_02_black_F"],
	["OPF - To-199 Neophron", "O_Plane_CAS_02_F"],
	["IND - CH-49 Mohawk", "I_Heli_Transport_02_F"],
	["IND - A-143 Buzzard (CAS)", "I_Plane_Fighter_03_CAS_F"],
	["IND - A-143 Buzzard (AA)", "I_Plane_Fighter_03_AA_F"]
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
	private["_vehicle"];
	_vehicle = _classname createVehicle position player;
	player moveInDriver _vehicle;
	player reveal _vehicle;
};
pixLogisticDialogGarage_Selection = nil;