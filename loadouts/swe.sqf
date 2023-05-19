/*
    Modify as needed and put the following line into the unit's init field:
    id = ["TYPE", this] call compile preprocessFileLineNumbers "loadouts\swe.sqf";
*/
params ["_type", "_unit"];

    if (!(local _unit)) exitwith {}; // to make the script not run in some bad way

    // Macros for adding equipment to inventories
    #define addItemCountToInventory(item, count, inventory) for "_i" from 1 to count do {_unit inventory item;};
    #define addItemCountToUniform(item, count) addItemCountToInventory(item, count, addItemToUniform);
    #define addItemCountToVest(item, count) addItemCountToInventory(item, count, addItemToVest);
    #define addItemCountToBackpack(item, count) addItemCountToInventory(item, count, addItemToBackpack);
    // The same sort of macro for vehicle cargo
    #define addItemCountToCargo(item, count) addItemCargoGlobal [item, count];

    // Remove items from unit
    removeAllWeapons _unit;
    removeAllItems _unit;
    removeAllAssignedItems _unit;
    removeUniform _unit;
    removeVest _unit;
    removeBackpack _unit;
    removeHeadgear _unit;
    removeGoggles _unit;

    // Assign basic inventory items
    _unit linkItem "ItemMap";       //map
    _unit linkItem "ItemCompass";   //Compass
    _unit linkItem "TFAR_anprc152"; //Rifleman radio
    _unit linkItem "ItemWatch";     // ItemWatch or TFAR_microdagr
	
    //_unit linkItem "NVGoggles";     // Equip unit with NVG here
	
	//facewear
    _facewear = "";
	

    // Helmets.
	private _headGear = switch (_type) do {
	case "AR": {"sfp_m90w_helmet_peltor_nomic"};
	case "MMG": {"sfp_m90w_helmet_peltor_nomic"};
	case "MAT": {"sfp_m90w_helmet_peltor_nomic"};
	case "PL": {"sfp_m90w_helmet_headset"};
	default {"sfp_m90w_helmet"};
	
	
	};
	

    _headGearCrew = "H_HelmetCrew_B";
    _headGearHeli = "H_PilotHelmetHeli_B";

    // Backpacks
    _backpack = "sfp_backpack_stridssack08";
    _medpack = "sfp_backpack_sjvv9";
	_arpack = "sfp_backpack_stridssack2000";
    _atpack = "sfp_backpack_grg_loader";
    _ladder = "ACE_TacticalLadder_Pack";
    _parachute = "ACE_NonSteerableParachute";
    // Backpack radios
    _backradio = "sfp_stridssack2000_ra_ksk12";    // Little to no cargo space
    _backradioLarge = "TFAR_rt1523g_big";   // More cargo space

    // Uniform
	private _uniform = selectRandom ["sfp_m90w_uniform","sfp_m90w_uniform_modern","sfp_m90w_uniform_dirty"];
    // Vest
private _vest = switch (_type) do {
    case "AR": {"sfp_kroppsskydd12_mg"};
    case "GRENADIER": {"sfp_kroppsskydd12_gl"};	
    case "TL": {"sfp_kroppsskydd12_gl"};	
    case "SL": {"sfp_kroppsskydd12_tl"};
    case "PL": {"sfp_kroppsskydd12_tl"};
    case "CLS": {"sfp_kroppsskydd12_medic"};
    case "CREW": {"sfp_kroppsskydd12_crew"};
    default {"sfp_kroppsskydd12"};
};

    // Weapons & Magazines
    _pistol = "rhsusf_weap_glock17g4";
    _pistolMag = "rhsusf_mag_17Rnd_9x19_FMJ";

    private _rifle = selectRandom["sfp_ak5c","sfp_ak5c_alt"];
    _rifleGL = "sfp_ak5c_m203";

    _rifleMag = "sfp_30Rnd_556x45_Stanag_plastic";
    _rifleTMag = "sfp_30Rnd_556x45_Stanag_tracer_plastic";

    _dmr = "sfp_ak4d";
    _dmrMag = "sfp_20Rnd_762x51_ak4";

    _ar = "sfp_ksp90c";
    _arMag = "sfp_200Rnd_556x45_ksp90";
    _arTMag = _arMag;

    _mmg = "sfp_ksp58B2";
    _mmgMag = "sfp_249Rnd_762x51_ksp58";

    // Launchers
    // 1-shot AT
    _lat = "rhs_weap_M136";

    // Heavier AT launcher
    _mat = "sfp_grg86";
    _matHE = "sfp_grg_he_mag";
    _matHEAT = "sfp_grg_heat_mag";

    // Lock-on AT launcher
    _hat = "launch_B_Titan_short_F";
    _hatHE = "Titan_AP";
    _hatHEAT = "Titan_AT";

    // AA launcher
    _aa = "launch_B_Titan_F";
    _aaMag = "Titan_AA";

    // Grenades
    _grenade = "sfp_handgrenade_shgr56";
    _smoke = "SmokeShell";
    _smokeb = "SmokeShellBlue";
    _smokeg = "SmokeShellGreen";
    _smokeo = "SmokeShellOrange";
    _smokep = "SmokeShellPurple";
    _smoker = "SmokeShellRed";
    _smokey = "SmokeShellYellow";

    // 40mm ammo
    _glhe = "1Rnd_HE_Grenade_shell";
    _glflareg = "UGL_FlareGreen_F";
    _glflarer = "UGL_FlareRed_F";
    _glflarew = "UGL_FlareWhite_F";
    _glflarey = "UGL_FlareYellow_F";
    _glsmokeb = "1Rnd_SmokeBlue_Grenade_shell";
    _glsmokeg = "1Rnd_SmokeGreen_Grenade_shell";
    _glsmokeo = "1Rnd_SmokeOrange_Grenade_shell";
    _glsmokep = "1Rnd_SmokePurple_Grenade_shell";
    _glsmoker = "1Rnd_SmokeRed_Grenade_shell";
    _glsmokew = "1Rnd_Smoke_Grenade_shell";
    _glsmokey = "1Rnd_SmokeYellow_Grenade_shell";

    // Attachments
    _laser = "acc_pointer_ir";
    _muzzle = "muzzle_snds_m";
    _sightholo = "sfp_optic_aimpoint";
    _sightscope = "sfp_optic_kikarsikte09_4x";
    _sightat = "";  // If the launcher has a sight slot it goes here
    _bipod = "bipod_01_f_blk";
    _sparebarrel = "ACE_SpareBarrel";   // Needed for some machine guns, place in backpack

    // Medical equipment
    _bandage = "ACE_packingBandage";
    _tourniquet = "ACE_tourniquet";
    _morphine = "ACE_morphine";
    _adenosine = "ACE_adenosine";
    _splint = "ACE_splint";
    _epine = "ACE_epinephrine";
    _blood = "ACE_bloodIV";
    _blood500 = "ACE_bloodIV_500";
    _pack = "ACE_personalAidKit";
    _sewingkit = "ACE_surgicalKit";

    // Demolition and sapper gear
    _democharge = "DemoCharge_Remote_Mag";
    _clacker = "ACE_Clacker";
    _defkit = "ACE_DefusalKit";
    _etool = "ACE_EntrenchingTool";
    _wirecutter = "ACE_wirecutter";
    _toolkit = "ToolKit";

    // Other helpful items
    _binocular = "Binocular";
    _vector = "ACE_Vector";
    _designator = "Laserdesignator";
    _designatorBattery = "Laserbatteries";
    _gps = "ItemGPS";
    _dagr = "ACE_DAGR";
    _microdagr = "ACE_microDAGR";
    _rtable = "ACE_RangeTable_82mm";
    _maptools = "ACE_MapTools";
    _uavbattery = "ACE_UAVBattery";

    #define ATTACHMENTS \
        _unit addPrimaryWeaponItem _sightholo;

    #define BACKRADIO \
        _unit addBackpack _backradio; \
        clearAllItemsFromBackpack _unit; \
        addItemCountToBackpack(_smoke, 2); \
        addItemCountToBackpack(_smoker, 2); \
        addItemCountToBackpack(_smokeg, 2); \
        addItemCountToBackpack(_maptools, 1); 

    #define CLOTHES \
        _unit forceAddUniform _uniform; \
        addItemCountToUniform(_bandage, 8); \
        addItemCountToUniform(_morphine, 1); \
        addItemCountToUniform(_epine, 1); \
        addItemCountToUniform(_tourniquet, 2); \
        addItemCountToUniform(_splint, 1); \
        addItemCountToUniform(_etool, 1); \
        _unit addVest _vest; \
        _unit addHeadgear _headGear; \
		_unit addGoggles _faceWear;

    #define GRENADES \
        addItemCountToUniform(_smoke, 1); \
        addItemCountToUniform(_grenade, 2);
		
	#define PISTOLKIT \
		addItemCountToVest(_pistolMag, 2); \
		_unit addWeapon _pistol;

    #define RIFLEMAGS \
        addItemCountToVest(_rifleMag, 10);

    #define RIFLEKIT \
        CLOTHES; \
        GRENADES; \
        RIFLEMAGS; \
        _unit addWeapon _rifle; \
        ATTACHMENTS;

switch (_type) do {

    case "PL": {
        RIFLEKIT;
        BACKRADIO;
        _unit addWeapon _binocular;
		addItemCountToBackpack(_rifleMag, 5);
		PISTOLKIT;
    };

    case "SL": {
        RIFLEKIT;
        BACKRADIO;
		addItemCountToBackpack(_rifleMag, 8);
        _unit addWeapon _binocular;
		PISTOLKIT;
		addItemCountToBackpack(_pistolMag, 1);
    };

    case "CLS": {
        RIFLEKIT;
        _unit addBackpack _medpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_blood, 4);
        addItemCountToBackpack(_blood500, 4);
        addItemCountToBackpack(_epine, 8);
        addItemCountToBackpack(_morphine, 8);
        addItemCountToBackpack(_splint, 8);
        addItemCountToBackpack(_tourniquet, 8);
        addItemCountToBackpack(_bandage, 30);
        addItemCountToBackpack(_smoker, 2);
        addItemCountToBackpack(_smokeg, 2);
		addItemCountToBackpack(_rifleMag, 3);

    };

    case "TL": {
		 CLOTHES;
         GRENADES;
         _unit addBackpack _backpack;
         addItemCountToVest(_rifleMag, 10);
		addItemCountToBackpack(_glhe, 15);
		addItemCountToBackpack(_glsmokew, 8);
		addItemCountToBackpack(_riflemag, 4);
        _unit addWeapon _rifleGL;
        _unit addWeapon _binocular;
        ATTACHMENTS;
	};

    case "RIFLE": {
        RIFLEKIT;
		_unit addBackpack _backpack;
		addItemCountToBackpack(_rifleMag, 7);

    };

    case "DMR": {
        CLOTHES;
        GRENADES;
        addItemCountToVest(_dmrMag, 10);
        _unit addWeapon _dmr;
        _unit addPrimaryWeaponItem _sightscope;
        _unit addPrimaryWeaponItem _laser;
        _unit addPrimaryWeaponItem _bipod;
    };
	
	case "GRENADIER": {
        CLOTHES;
        GRENADES;
		_unit addBackpack _backpack;
        addItemCountToVest(_rifleMag, 9);
		addItemCountToBackpack(_glhe, 15);
		addItemCountToBackpack(_glsmokew, 8);
        _unit addWeapon _rifleGL;
    };

    case "AR": {
        CLOTHES;
        _unit addBackpack _arpack;
        clearAllItemsFromBackpack _unit;
        GRENADES;
        addItemCountToVest(_arMag, 3);
        addItemCountToBackpack(_arMag, 4);
        //addItemCountToBackpack(_arTMag, 2);
        addItemCountToBackpack(_sparebarrel, 1);
        _unit addWeapon _ar;
        _unit addPrimaryWeaponItem _bipod;
        _unit addPrimaryWeaponItem _sightholo;
    };

    case "ARASS": {
        RIFLEKIT;
        _unit addBackpack _arpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_arMag, 6);
        //addItemCountToBackpack(_arTMag, 2); //Uncomment if ar mag != ar mag tracer
         _unit addWeapon _binocular;
    };

    case "MMG": {
        CLOTHES;
        GRENADES;
        _unit addBackpack _backpack;
        addItemCountToVest(_mmgMag, 2);
        addItemCountToBackpack(_mmgMag, 2);
        addItemCountToBackpack(_sparebarrel, 1);
        _unit addWeapon _mmg;
        ATTACHMENTS;
    };

    case "MMGASS": {
        RIFLEKIT;
        _unit addBackpack _arpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_mmgMag, 4);
        _unit addWeapon _binocular;
    };

    case "LAT": {
        RIFLEKIT;
        _unit addWeapon _lat;
    };

    case "MAT": {
        RIFLEKIT;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_matHEAT, 2);
        _unit addWeapon _mat;
        _unit addWeaponItem [_mat, _sightat];
    };

    case "MATASS": {
        RIFLEKIT;
        _unit addBackpack _atpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_matHEAT, 2);
        addItemCountToBackpack(_matHE, 2);
        _unit addWeapon _vector;
    };

    case "HAT": {
        RIFLEKIT;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_hatHEAT, 1);
        _unit addWeapon _hat;
    };

    case "HATASS": {
        RIFLEKIT;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_hatHEAT, 2);
        addItemCountToBackpack(_hatHE, 1);
        _unit addWeapon _vector;
    };

    case "AA": {
        RIFLEKIT;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_aaMag, 3);
        _unit addWeapon _aa;
    };

    case "CREW": {
        RIFLEKIT;
        _unit addHeadgear _headGearCrew;
    };

    case "HELI": {
        RIFLEKIT;
        _unit addHeadgear _headGearHeli;
    };

    case "SAPPER": {
        RIFLEKIT;
        _unit addBackpack _backpack;
        addItemCountToBackpack(_democharge, 4);
        addItemCountToBackpack(_defkit, 1);
        addItemCountToBackpack(_wirecutter, 1);
    };

    case "AMMOBOX": {
        _unit addItemCountToCargo(_rifleMag, 20);
        _unit addItemCountToCargo(_rifleTMag, 5);
        _unit addItemCountToCargo(_arMag, 4);
        _unit addItemCountToCargo(_grenade, 8);
        _unit addItemCountToCargo(_glhe, 12);
        _unit addItemCountToCargo(_glsmokew, 6);
        _unit addWeaponCargoGlobal [_lat, 2];
    };

    case "MEDBOX": {
        _unit addItemCountToCargo(_adenosine, 8);
        _unit addItemCountToCargo(_blood, 10);
        _unit addItemCountToCargo(_epine, 8);
        _unit addItemCountToCargo(_morphine, 8);
        _unit addItemCountToCargo(_splint, 8);
        _unit addItemCountToCargo(_tourniquet, 8);
        _unit addItemCountToCargo(_bandage, 20);
    };

};
