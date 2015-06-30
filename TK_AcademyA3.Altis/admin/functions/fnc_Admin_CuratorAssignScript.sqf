if (isServer) then
{
	private["_target"];
	if (isDedicated) then { _target = _this select 0; } else	{ _target = cursorTarget; };

	unassignCurator DynamicCuratorModule;
	_target assignCurator DynamicCuratorModule; 
}
else
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
	[[cursorTarget], "fnc_Admin_CuratorAssignScript", false] call BIS_fnc_MP;
};