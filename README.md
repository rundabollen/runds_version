### trubb_fnc_spawnGroup
A function that lets you spawn predefined groups of units and have them move towards a target area.  

To call use ```["name_of_start_marker", "name_destination_marker", unit_array, SIDE <optional, default EAST>] call trubb_fnc_spawnGroup;```

In ```initServer.sqf``` create an array (or arrays) containing the wanted group structure such as ```ei_squad = [B_Soldier_F", "B_Soldier_F"];``` these are then used as part of the call to the functions.

In order to spawn multiple groups, place the call to ```trubb_fnc_spawnGroup``` within a loop.

### trubb_fnc_endCondition
At the start of the mission we count how many players are present, based on this count the current amount of alive players is continuously checked.  
The mission is ended when a side has fewer players alive than their treshold.

The maximal percentage of casualties is set through the variables `trubb_*_casualty_limit` in `initServer.sqf`. While these are technically editable during a mission I do not recommend changing them after mission start.

The variables `trubb_wait` and `trubb_mission_end` mustn't be edited. Considering a way to not have these publicly exposed to be implemented in the future.

#### Adding this to your mission

1. Copy the contents of `description.ext` and `initServer.sqf` into the respective files in your mission folder.  
2. Copy the folder `\functions` into your mission folder.  
3. Edit the values assigned to the variables `trubb_*_casualty_limit` in `initServer.sqf` to your liking. **Do NOT remove them.**

That's it! Now you're done, but don't forget to inform your players.

### trubb_fnc_stand & trubb_fnc_kneel
Functions for having all AI in a provided list - intended for use with a trigger - stand or kneel at once.  
Mainly intended for minimizing the amount of code required in a trigger.  

An example of use is having soldiers that are lying down in a trench pop up to fire at the enemy when they pass certain point.  

To use place a trigger covering the soldiers that are to be affected, set it to activate on these soldier's side present, and put ```[thislist] call trubb_fnc_kneel/stand;``` in the on activation field of the trigger.  

The condition can be for example a trigger: in the trigger you placed put ```triggerActivated yourtrigger``` or your custom condition as what activates the functions.

### combatzone
Script to create a polygon limiting the play-area. Original by Tuntematon of Arma Finland. Adjust `_marker_count` in `script\combatzone.sqf` and place an equal amount of markers named `border_n`.

### tun_loadscreen
A script creating a short wait time between loading screen and mission start to accomodate for players having varying computers and internet connections. Disabled in singleplayer for testing purposes.
By Tuntematon from Arma Finland.