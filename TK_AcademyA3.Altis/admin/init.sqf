if (isServer) then { adminVirtualArsenal = false; publicVariable "adminVirtualArsenal";};
if (isServer) then { adminPlayerTeleport = false; publicVariable "adminPlayerTeleport";};

call compile preprocessFileLineNumbers "admin\config.sqf";
call compile preprocessFileLineNumbers "admin\functions\_compile.sqf";

if (call fnc_Admin_IsPlayerAdmin) then 
{
	if (hasInterface) then
	{
		[] spawn {
			waitUntil { !isNull player };
			waituntil {!(IsNull (findDisplay 46))};
	
			private["_tmp"];
			//_tmp = (findDisplay 46) displayaddEventHandler ["KeyDown", "player globalChat format['key: %1',_this select 1];"];
			// 20=T, 22=U, 86=<, 24=O, 21=Z, 220=rwin, 221=rapp, 37=K, 15=TAB, 57=SPACE 
			_tmp = (findDisplay 46) displayaddEventHandler ["KeyDown", "if (!dialog ) then { if (_this select 1 == 220) then { _tmp = [] spawn fnc_Admin_ShowDialog;};};"];
		};
	};
};