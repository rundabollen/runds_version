waitUntil {!isNull player};

player createDiaryRecord ["Diary", ["Victory Conditions & Credits","
Victory Conditions:
<br/>CONDITION
<br/>
<br/>CASUALTY LIMIT
<br/>
<br/>Mission by rund for Anrop.se
"]];

player createDiaryRecord ["Diary", ["Gameplay settings","
Medical Settings
<br/>Go here
<br/>
<br/Respawn settings
<br/>
<br/>
<br/Other mod settings
"]];




player createDiaryRecord ["Diary",["V. Command & Signal","
ALL FREQUENCIES ARE PREDEFINED, NON-LEADERS ONLY NEED TO CHANGE CHANNEL
<br/>
<br/>Squad Leaders will need to manually set their additional channel!
<br/>
<br/>Long Range:
<br/>Alpha Plt. Ch.1 -  Freq.70 
<execute expression="[call TFAR_fnc_activeLrRadio, 1] call TFAR_fnc_setLrChannel;">Set LR Primary.</execute>
 <execute expression="[call TFAR_fnc_activeLrRadio, 1] call TFAR_fnc_setAdditionalLrChannel;">Set LR Additional.</execute>
 <execute expression="[(call TFAR_fnc_activeSwRadio), 7, ""70.0""] call TFAR_fnc_setChannelFrequency;[call TFAR_fnc_activeSwRadio, 7] call TFAR_fnc_setSwChannel;">Set SR Primary.</execute>
 <execute expression="[(call TFAR_fnc_activeSwRadio), 7, ""70.0""] call TFAR_fnc_setChannelFrequency;[(call TFAR_fnc_activeSwRadio), 7] call TFAR_fnc_setAdditionalSwChannel;">Set SR Additional.</execute>
<br/>
<br/>Short Range:
<br/>Alpha 1 - Ch.1 - Freq. 110 <execute expression="[call TFAR_fnc_activeSwRadio, 1] call TFAR_fnc_setSwChannel;">Set SR Primary.</execute> <execute expression="[call TFAR_fnc_activeSwRadio, 1] call TFAR_fnc_setAdditionalSwChannel;">Set Additional.</execute>
<br/>Alpha 2 - Ch.2 - Freq. 120 <execute expression="[call TFAR_fnc_activeSwRadio, 2] call TFAR_fnc_setSwChannel;">Set SR Primary.</execute> <execute expression="[call TFAR_fnc_activeSwRadio, 2] call TFAR_fnc_setAdditionalSwChannel;">Set Additional.</execute>
<br/>Alpha 3 - Ch.3 - Freq. 130 <execute expression="[call TFAR_fnc_activeSwRadio, 3] call TFAR_fnc_setSwChannel;">Set SR Primary.</execute> <execute expression="[call TFAR_fnc_activeSwRadio, 3] call TFAR_fnc_setAdditionalSwChannel;">Set Additional.</execute>
<br/>Alpha 4 - Ch.4 - Freq. 140 <execute expression="[call TFAR_fnc_activeSwRadio, 4] call TFAR_fnc_setSwChannel;">Set SR Primary.</execute> <execute expression="[call TFAR_fnc_activeSwRadio, 4] call TFAR_fnc_setAdditionalSwChannel;">Set Additional.</execute>
<br/>
<br/>Channel 7 reserved for custom frequencies.
"]];

player createDiaryRecord ["Diary",["IV. Service & Support","
a. Equipment
<br/>How much ammo?
<br/>Utility equipment?
<br/>
<br/>Reinforcements and resupply where if any?
<br/>How get them?
<br/>
<br/>b. Medical resources
<br/>Medical system and criteria
<br/>
<br/>Any other help players can expect.
"]];

player createDiaryRecord ["Diary",["III. Mission","
THE COMBAT TASK
"]];

player createDiaryRecord ["Diary",["IIB. Friendly Forces","
WHAT FRIENDLY FORCES THERE ARE
"]];

player createDiaryRecord ["Diary",["IIA. Enemy Forces","
WHAT ENEMY FORCES THERE ARE
"]];

player createDiaryRecord ["Diary",["I. Situation","
WHAT'S THE SITUATION?
"]];

player createDiaryRecord ["Diary",["IMPORTANT NOTES","
A setup timer is present in the mission.
<br/>
<br/>You should probably not try to engage the enemy while it is active.
"]];