if (isNil "adminTfarZeusFix_enabled") then { adminTfarZeusFix_enabled = false;};
 
if (adminTfarZeusFix_enabled) then
{
	adminTfarZeusFix_enabled = false;
	player globalChat "Zeusfix: Disabling...";
}
else
{
	adminTfarZeusFix_enabled = true;
	player globalChat "ZeusFix: Enabled";

	[] spawn {
		private["_playerPosition"];
		private["_playerDirection"];
		private["_captiveNum"];
		while { adminTfarZeusFix_enabled } do
		{
			// Sleep a while
			Sleep 1;
		
			if (!isNull (findDisplay 312)) then /* if (ZeusDisplay aktiv) then */
			{
				// Player is using Zeuscamera
				player globalChat "Zeusfix: Interface opened";

				// Position vor dem Attachen merken
				_playerPosition = getPos player;
				_playerDirection = getDir player;
				_captiveNum = captiveNum player;

				player globalChat "Zeusfix: Attached to camera";

				// Player an die ZeusCamera attachen
				player setCaptive 3;
				player allowDamage false;
				[[player, true], "fnc_Admin_ToggleZeusFixHelper", false] call BIS_fnc_MP;

				// Überwachen
				while { (!(isNull curatorCamera)) && (adminTfarZeusFix_enabled) } do
				{				
					player setPos (getPos curatorCamera);
					player setDir (getDir curatorCamera);
					Sleep 0.5;
				};

				// Spieler wieder zurück setzen
				player setvelocity [0,0,0];
				player setPos _playerPosition;
				player setDir _playerDirection;
				player setvelocity [0,0,0];
				[[player, false], "fnc_Admin_ToggleZeusFixHelper", false] call BIS_fnc_MP;
				Sleep 0.5;
				player allowDamage true;
				player setDamage 0;
				player setCaptive _captiveNum;
				
				player globalChat "Zeusfix: Detached from camera";			
			};
		};

		player globalChat "ZeusFix: Disabled";	
	};
};