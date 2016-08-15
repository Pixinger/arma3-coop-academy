private["_building"];
_building = _this select 0;

/*-----------------------------------------------------------------	**/
/* Dialog erstellen*/
#include "defines.hpp";
createDialog "PIXLOGISTIC_DIALOG_GARAGE"; 	
 
private["_loadouts"];
_loadouts = [
	["BLU - Hunter", 					"B_MRAP_01_F"],
	["BLU - Hunter GMG", 				"B_MRAP_01_gmg_F"],
	["BLU - Hunter HMG", 				"B_MRAP_01_hmg_F"],
	["BLU - Quadbike", 				"B_Quadbike_01_F"],
	["BLU - HEMTT Transport", 			"B_Truck_01_transport_F"],
	["BLU - HEMTT Transport (Covered)",	"B_Truck_01_covered_F"],
	["BLU - Offroad", 				"B_G_Offroad_01_F"],
	["BLU - Offroad (Armed)", 			"B_G_Offroad_01_armed_F"],
	["BLU - HEMTT", 					"B_Truck_01_mover_F"],
	["BLU - HEMTT Box", 				"B_Truck_01_box_F"],
	["BLU - HEMTT Repair", 			"B_Truck_01_Repair_F"],
	["BLU - HEMTT Ammo", 				"B_Truck_01_ammo_F"],
	["BLU - HEMTT Fuel", 				"B_Truck_01_fuel_F"],
	["BLU - HEMTT Medical", 			"B_Truck_01_medical_F"],
	["BLU - Truck", 					"B_G_Van_01_transport_F"],
	["BLU - Fuel Truck", 				"B_G_Van_01_fuel_F"],
	["BLU - AMV-7 Marshall", 			"B_APC_Wheeled_01_cannon_F"],
	["OPF - Ifrit", 					"O_MRAP_02_F"],
	["OPF - Ifrit GMG", 				"O_MRAP_02_gmg_F"],
	["OPF - Ifrit HMG", 				"O_MRAP_02_hmg_F"],
	["OPF - MSE-3 Marid", 				"O_APC_Wheeled_02_rcws_F"],
	["IND - Strider", 				"I_MRAP_03_F"],
	["IND - Strider GMG", 				"I_MRAP_03_GMG_F"],
	["IND - Strider HMG", 				"I_MRAP_03_HMG_F"],
	["IND - AFV-4 Gorgon", 			"I_APC_Wheeled_03_cannon_F"]
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