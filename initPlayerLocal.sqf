[] execVM "f\safeStart\f_safeStart.sqf";

params ["_unit"];

_unit addEventHandler ["InventoryClosed", {
    params ["_unit"];
    // ADD ITEMS THAT SHOULD NOT FALL INTO PLAYER HANDS HERE
    //_unit removeItem "ACE_EntrenchingTool";
}];
