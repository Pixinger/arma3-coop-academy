setviewdistance 2500;
setObjectViewDistance 2500;
//setTerrainGrid 50; 

waituntil {!isnil "bis_fnc_init"};
if (hasInterface) then { waitUntil {!isNull player};};
enableSaving [false, false];
enableTeamSwitch false;

/*-----------------------------------------------*/
/* Parameter (0): Debug */
pixDebug = false;
if (isServer && !isDedicated) then { pixDebug = true; };
/* Parameter (0): TFR-Muted while dead */
pixParamTFARMutedOnDeath = (paramsArray select 0); //0=aus 1=an 
diag_log format["INFO: pixParamTFARMutedOnDeath: %1", pixParamTFARMutedOnDeath];
/* Parameter (1): TFR-Terrain Coefficient */
pixParamTFARTerrainInterceptionCoefficient = (paramsArray select 1); //0,0.5,1,2,3,4,5,6,7,8,9,10
diag_log format["INFO: pixParamTFARTerrainInterceptionCoefficient: %1", pixParamTFARTerrainInterceptionCoefficient];
TF_terrain_interception_coefficient = pixParamTFARTerrainInterceptionCoefficient;

/* Warten bis das Briefing beendet wurde */
/* Erst dann sind die PublicVariablen auch initialisiert. */
Sleep .1;

/* Prüfen ob ein HeadlessClient erkannt wurde */
if (isNil "HeadlessClientAvailable") then 
{	
	HeadlessClientAvailable = false;
	diag_log "No headless-client detected";
} else {
	diag_log "Headless-client detected";
	HeadlessClientAvailable = true;
};

// Lokal für jeden Rechner prüfen, ob hier (auf dieser Maschine) Headless Code ausgeführt werden soll, oder nicht.
ExecuteHeadlessCode = false;
if ((HeadlessClientAvailable && !hasInterface && !isServer) || (!HeadlessClientAvailable && isServer)) then {	ExecuteHeadlessCode = true; };
diag_log format["ExecuteHeadlessCode: %1", ExecuteHeadlessCode];

/*-----------------------------------------------*/
cutText ["Initialization...\n[TK]Academy A3", "BLACK FADED",1];

player setvariable ["BIS_nocoreconversations",true];

call compile preprocessFileLineNumbers "admin\init.sqf";
call compile preprocessFileLineNumbers "barracks\init.sqf";
call compile preprocessFileLineNumbers "garage\init.sqf";
call compile preprocessFileLineNumbers "player\init.sqf";

//BIS Revive
[] spawn {
	waitUntil {!isNil "BIS_revive_initialized" && {BIS_revive_initialized}};
	BIS_revive_reviveDelayDefault = 15; 			// time (in seconds) that it takes to revive a unit
	BIS_revive_reviveBleedOutDelayDefault = 600; 	// time (in seconds) that it takes to bleed out
	BIS_revive_reviveForceRespawnDelayDefault = 30; 	// Default time (in seconds) that it takes to force respawn
	BIS_revive_medikitMultiplier = 4; 				// Multiplier acting on revive time if the player has a medikit
	
};

/* Camera deaktivieren */
cutText ["", "BLACK IN",1];