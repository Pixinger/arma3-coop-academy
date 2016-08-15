private["_position"];
_position = getMarkerPos "respawn_west";

private["_units"];
_units = allPlayers - (entities "HeadlessClient_F");

private["_xPos", "_yPos", "_cnt"];
_xPos = _position select 0;
_yPos = _position select 1;
_cnt = 0;

doGetOut _units;

Sleep 1;

{
	if (_x != player) then
	{
		_x setVelocity [0,0,0];
		_x setPosATL [_xPos + _cnt, _yPos, 0];
		_x setDir 180;	
		_cnt = _cnt + .90;
	};
} forEach _units;

player setPos [_xPos + (_cnt / 2), _yPos - 4, 0];
player setDir 0;