private["_building"];
_building = _this select 0;

/*-----------------------------------------------------------------	**/
/* Dialog erstellen*/
#include "defines.hpp";
createDialog "PIXLOGISTIC_DIALOG_GARAGE"; 	

private["_loadouts"];
_loadouts = [
	["BLU - IFV-6c Panther", "B_APC_Tracked_01_rcws_F"],
	["BLU - CRV-6e Bobcat", "B_APC_Tracked_01_CRV_F"],
	["BLU - IFV-6a Cheetah", "B_APC_Tracked_01_AA_F"],
	["BLU - M2A1 Slammer", "B_MBT_01_cannon_F"],
	["BLU - M4 Scorcher", "B_MBT_01_arty_F"],
	["BLU - M5 Sandstorm MLRS", "B_MBT_01_mlrs_F"],
	["OPF - BTR-K Kamysh", "O_APC_Tracked_02_cannon_F"],
	["OPF - ZSU-39 Tigris", "O_APC_Tracked_02_AA_F"],
	["OPF - T-100 Varsuk", "O_MBT_02_cannon_F"],
	["OPF - 2S9 Sochor", "O_MBT_02_arty_F"]
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