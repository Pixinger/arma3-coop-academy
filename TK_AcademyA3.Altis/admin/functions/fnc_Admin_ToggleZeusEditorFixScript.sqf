// Inspired by ADV Zeus Script / GX Zeus Script

if (isServer) then 
{ 
	while { true } do
	{				
		StaticCuratorModule addCuratorEditableObjects [(allMissionObjects "Man"), false];
		Sleep 1;
		{ StaticCuratorModule addCuratorEditableObjects [[_x], true]; } forEach allUnits;					
		Sleep 1;
		StaticCuratorModule addCuratorEditableObjects [vehicles, false];
		Sleep 1;
		StaticCuratorModule addCuratorEditableObjects [(allMissionObjects "Air"), true];
		Sleep 1;
		StaticCuratorModule addCuratorEditableObjects [(allMissionObjects "Static"), false];
		Sleep 1;
		//Sleep 1;
		//StaticCuratorModule addCuratorEditableObjects [(allMissionObjects "Thing"), false];
		//Sleep 1;
		//StaticCuratorModule addCuratorEditableObjects [(allMissionObjects "Ammo"), false];	
	};
};
