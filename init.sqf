if (hasInterface) then {
	[] call compile preprocessFileLineNumbers "script\briefing.sqf";
	[] call compile preprocessFileLineNumbers "script\tun_loadscreen.sqf";
	[] call compile preprocessFileLineNumbers "script\combatzone.sqf";
	//Below line commented out because script is work in progress
	//[] call compile preprocessFileLineNumbers "script\radioactions.sqf";
	



};
