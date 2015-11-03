if (count _this == 0) then
{
	player globalChat "isNil";
	_unit = cursorTarget;
	
	if (_unit isKindOf "CAManBase") then
	{
		// 1. Param
		// 2. Code/Function
		// 3. Target
		//    Object - function will be executed only where unit is local [default: everyone] 
		//    Array - array of objects 
		//    Boolean - true to execute on each machine (including the one where the function was called from), false to execute it on server only 
		//    Number - function will be executed only on client with the given owner ID 
		//    Side - function will be executed only on clients where the player is on the specified side 
		//    Group - function will be executed only on clients where the player is in the specified group 
		// 4. IsPersistent
		// 5. IsCall 
		[[_unit], "fnc_Admin_TogglePlayerSideScript", _unit] call BIS_fnc_MP;
	};
}
else
{
	private["_unit"];
	_unit = _this select 0;

	private["_dir"];
	_dir = (getdir _unit);
	private["_pos"];
	_pos = (getpos _unit);
	private["_newUnit","_newGroup"];
	
	if (side _unit == east) then
	{
		player globalChat "west";
		_newGroup = createGroup west;
		_newUnit = _newGroup createUnit ["B_Soldier_F", _pos, [], 0, "None"];
	}
	else
	{
		player globalChat "east";
		_newGroup = createGroup east;
		_newUnit = _newGroup createUnit ["O_Soldier_F", _pos, [], 0, "None"];
	};
	
	Sleep .1;
	
	addSwitchableUnit _newUnit;
	selectPlayer _newUnit;
	[_unit] join grpNull;
	deletevehicle _unit;
	_newUnit setpos _pos;
	_newUnit setdir _dir;
};