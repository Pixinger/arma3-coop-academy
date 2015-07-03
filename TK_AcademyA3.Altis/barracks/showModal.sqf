private["_building"];
_building = _this select 0;

/*-----------------------------------------------------------------	**/
/* Dialog erstellen*/
#include "defines.hpp";
createDialog "PIXLOGISTIC_DIALOG_BARRACK"; 	

private["_loadouts"];
_loadouts = [
	["Freizeit", "Default.sqf"]	,
	["Soldat","Soldier.sqf"],
	["Grenadier","Grenade.sqf"],
	["Automatikschütze (Mk200)","Belt_AutoriflemanMk200.sqf"],
	["Automatikschütze (Navid 9.3mm) DLC","Belt_AutoriflemanNavid.sqf"],
	["Automatikschütze (SPMG .338) DLC","Belt_AutoriflemanSPMG.sqf"],
	["Gruppenscharfschütze (Rahim)","GroupSniperRahim.sqf"],
	["Gruppenscharfschütze (Mk-1) DLC","GroupSniperMk1.sqf"],
	["NLAW (AT)","NLAW.sqf"],
	["Titan (AT)","TitanAT.sqf"],
	["Titan (AA)","TitanAA.sqf"],
	["Sanitäter (Kämpfer)","MedicCombat.sqf"],
	["Sanitäter (Funk)","MedicRadio.sqf"],
	["Sprengstoffexperte","EngineerMine.sqf"],
	["Reparaturexperte","EngineerRepair.sqf"],
	["UAV","UAV.sqf"],
	["Aufklärer","Scout.sqf"],
	["Scharfschütze (GM6-Lynx)","SniperGM6.sqf"],
	["Scharfschütze (MAR-10) DLC","SniperMAR10.sqf"],
	["Gruppenführer","Teamleader.sqf"],
	["Gruppenführer (Funk)","TeamleaderRadio.sqf"],
	["Crew","Crew.sqf"],
	["Helipilot", "HeliPilot.sqf"],
	["Helipilot (Radio)", "HeliPilotRadio.sqf"],
	["HALO", "Halo.sqf"],
	["HALO (AT)", "HaloTitanAT.sqf"],
	["Unbewaffnet (Aufklärer)", "UnarmedScout.sqf"]
	//["Automatikschütze","US_Autorifleman.sqf"],
	//["Sanitäter (Aufklärer)","US_MedicRecon.sqf"],
	//["Sanitäter (Funker)","US_MedicRadio.sqf"],
//	["Scharfschütze","US_Sniper.sqf"],
//	["Beobachter","US_Spotter.sqf"],
//	["Unterstüzung (AT)","US_SupportAT.sqf"],
//	["Unterstüzung (MG)","US_SupportMG.sqf"],
//	["UAV","US_UAV.sqf"],
//	["UAV (Raven)","US_UAVRaven.sqf"],
//	["Taucher", "Diver.sqf"],
//	["Pilot", "Pilot.sqf"],
//	["Crew", "Crew.sqf"],
//	["Kommandeur", "Commander.sqf"],
];

/*-----------------------------------------------------------------		*/
/* Listbox füllen*/
{
	lbAdd [PIXLOGISTIC_IDC_DIALOG_BARRACK_List, (_x select 0)];
} foreach _loadouts;
lbSetCurSel [PIXLOGISTIC_IDC_DIALOG_BARRACK_List, 0];

/*-----------------------------------------------------------------	*/
/* Dialog anzeigen*/
pixLogisticDialogBarrack_ButtonOK = 0;
pixLogisticDialogBarrack_Selection = -1;
waitUntil { !dialog };

/*-----------------------------------------------------------------	*/
/* Wenn OK geklickt wurde, die Eingaben verarbeiten*/
if (pixLogisticDialogBarrack_ButtonOK == 1) then
{		
	private["_scriptFilename"];
	_scriptFilename = (_loadouts select pixLogisticDialogBarrack_Selection) select 1;

	/* LoadOut zuweisen */
	private["_result"];
	_result = [player, _scriptFilename] call compile preprocessFileLineNumbers "barracks\applyLoadOut.sqf";
};
pixLogisticDialogBarrack_Selection = nil;