if (hasInterface) then {
	    switch (side player) do
    {
    	case west: {[] call compile preprocessFileLineNumbers "script\briefing_west.sqf";};
    	case east: {[] call compile preprocessFileLineNumbers "script\briefing_east.sqf";;
	case resistance: {[] call compile preprocessFileLineNumbers "script\briefing_independent.sqf";};
	case civilian: {[] call compile preprocessFileLineNumbers "script\briefing_civilian.sqf";};
    	default { hint "You don't get a briefing :(" };
    };
	[] call compile preprocessFileLineNumbers "script\tun_loadscreen.sqf";
	[] call compile preprocessFileLineNumbers "script\combatzone.sqf";
	[] call compile preprocessFileLineNumbers "script\radioactions.sqf";
	



};
