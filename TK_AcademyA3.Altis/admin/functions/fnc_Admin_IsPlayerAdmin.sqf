private["_result"];
_result = false;

//
if (serverCommandAvailable "#logout") then
{
	_result = true;
};

_result;