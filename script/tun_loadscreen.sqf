if (!isMultiplayer) exitWith { }; // skip if singleplayer

[{!isNull player && cba_missiontime > 0}, {
    tun_loadscreen_done = false;
    _screenTime = round(count allUnits / 10);
    if (_screenTime < 10) then {
        _screenTime = 10;
    };
    openMap [true, true];
    _camera = "camera" camCreate [(getPos player select 0),(getPos player select 1),100];
    _camera cameraEffect ["internal","back"];
    _camera camSetFOV 0.700;
    _camera camSetTarget player;
    _camera camCommit 0;

    //Run loadscreen text loop
    [{
        _screenTime = ceil (_args - cba_missiontime);

        if (_screenTime <= 0) then {
            cutText[" Loading mission", "PLAIN", 5, true];
            [_handle] call CBA_fnc_removePerFrameHandler;
            tun_loadscreen_done = true;
        } else {
            cutText[format [" Loading mission \n %1", _screenTime], "PLAIN", 1, true];
        };
    }, 1, _screenTime] call CBA_fnc_addPerFrameHandler;

    // Destroy camera after loadtime is done
    [{tun_loadscreen_done}, {
        _camera = _this;
        player cameraEffect ["terminate","back"];
        camDestroy _camera;
        cutText["", "BLACK IN", 5];
        openMap [false, false];
    }, _camera] call CBA_fnc_waitUntilAndExecute;

}, []] call CBA_fnc_waitUntilAndExecute;




