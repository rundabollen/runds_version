/* 
by rund
Creates ACE self interactions to:
Change Stereo mode on active radio devices. 

*/


//Placeholder
_code = {
	systemChat "Short Range Radio Settings";
};

//Parent action Short Range
_action = ["SrSettings","Short Range Radio","",_code,{true}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject; 

//Primary Channel
	
//Child 1 Stereo Settings
//Child 1 Primary
_action = ["SrStP","Stereo Primary","",_code,{true}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions","SrSettings"], _action] call ace_interact_menu_fnc_addActionToObject; 

//Children 2 Primary
_action = ["SrStPStereo","Stereo","",{
	[call TFAR_fnc_activeSWRadio, 0] call TFAR_fnc_setSwStereo;},{true}
] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions", "SrSettings","SrStP"], _action] call ace_interact_menu_fnc_addActionToObject; 

_action = ["SrStPLeft","Left","",{
	[call TFAR_fnc_activeSWRadio, 1] call TFAR_fnc_setSwStereo;},{true}
] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions","SrSettings","SrStP"], _action] call ace_interact_menu_fnc_addActionToObject; 

_action = ["SrStPRight","Right","",{
	[call TFAR_fnc_activeSWRadio, 2] call TFAR_fnc_setSwStereo;},{true}
] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions","SrSettings","SrStP"], _action] call ace_interact_menu_fnc_addActionToObject; 


//Alternate Channel	

//Child 1 Alternate
_action = ["SrStA","Stereo Alternate","",_code,{true}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions","SrSettings"], _action] call ace_interact_menu_fnc_addActionToObject; 
//Children 2 Alternate
_action = ["SrStAStereo","Stereo","",{
	[call TFAR_fnc_activeSWRadio, 0] call TFAR_fnc_setAdditionalSwStereo;},{true}
] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions", "SrSettings","SrStA"], _action] call ace_interact_menu_fnc_addActionToObject; 

_action = ["SrStALeft","Left","",{
	[call TFAR_fnc_activeSWRadio, 1] call TFAR_fnc_setAdditionalSwStereo;},{true}
] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions","SrSettings","SrStA"], _action] call ace_interact_menu_fnc_addActionToObject; 

_action = ["SrStARight","Right","",{
	[call TFAR_fnc_activeSWRadio, 2] call TFAR_fnc_setAdditionalSwStereo;},{true}
] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions","SrSettings","SrStA"], _action] call ace_interact_menu_fnc_addActionToObject; 

