 if (adminBarracks) then
 {
	_tmp = [] execVM "barracks\showModal.sqf";
 }
 else
 {
	hintC "Die Barracks sind nicht freigegeben";
 };