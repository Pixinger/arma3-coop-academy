// by commy2 and CAA-Picard, AGM
// Modified by Pixinger

#define VIEW_DISTANCE	15
#define MAX_ALPHA	1

if (hasInterface) then
{
	addMissionEventHandler ["Draw3D", {
		_target = cursorTarget;
		_target = if (_target in allUnitsUAV) then {objNull} else {effectiveCommander _target};

		if (!isNull _target && {(side group _target) getFriend playerSide >= 0.6} && {_target != player} && {isPlayer _player}) then 
		{
		  _distance = player distance _target;
		  _alpha = ((1 - 0.2 * (_distance - VIEW_DISTANCE)) min 1) * MAX_ALPHA;
		  [player, _target, _alpha, _distance * 0.026] call fnc_player_NameTags;
		};
	}];
};