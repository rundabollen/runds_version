/*
 * Author: Trubb
 * Spawn a group of units on the game server.
 *
 * Arguments:
 * 0: a marker, at the position of which the group will be spawned <marker>
 * 1: a marker, to where the group will move <marker>
 * 2: an array of 1 <= n units <string array>
 * 3: the side to which the spawned units will belong <(EAST|WEST|GUER)>
 *
 * Returns:
 * The spawned group
 */

params [
	"_trubb_start",	// marker where units will spawn
	"_trubb_end",	// marker that units will head for
	"_trubb_units",		// array of units
	["_trubb_side", EAST, [WEST] ]	// side that units will belong to, default is EAST
];

private _group = [getMarkerPos _trubb_start, _trubb_side, _trubb_units ] call BIS_fnc_spawnGroup;

{
	//gear script goes here
	_x disableAI "COVER";
	_x disableAI "SUPPRESSION";
} forEach units _group;

_group setFormation "LINE";
_group setCombatMode "YELLOW";
_group setBehaviour "AWARE";
_group setSpeedMode "NORMAL";
_group deleteGroupWhenEmpty true;

_wp = _group addWaypoint [getMarkerPos _trubb_end, 0];
_wp setWaypointType "SAD";

[_group, 0] setWaypointScript "[_group, getMarkerPos _trubb_end, 150] call BIS_fnc_taskPatrol";

_group;
