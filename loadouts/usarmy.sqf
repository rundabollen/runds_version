/*
    Modify as needed and put the following line into the unit's init field:
    id = ["TYPE", this] call compile preprocessFileLineNumbers "loadouts\usarmy.sqf";
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
    _unit linkItem "ItemMap";
    _unit linkItem "ItemCompass";
    //_unit linkItem "TFAR_anprc152";
    _unit linkItem "ItemWatch";     // ItemWatch or TFAR_microdagr
	
    //_unit linkItem "NVGoggles";     // Equip unit with NVG here
	
	//facewear
	
	
	_faceWear = selectRandom [
	"",
	"",
	"",
	"",
	"vn_b_scarf_01_03",
	"vn_b_scarf_01_01",
	"vn_g_spectacles_02",
	"vn_g_glasses_01",
	"vn_b_spectacles_tinted"
	];
	
	

    // Helmets
	private _headGear = switch (_type) do {
	case "AR": {"vn_b_helmet_m1_08_01"};
	case "CLS": {"vn_b_helmet_m1_07_01"};
	case "GRENADIER": {"vn_b_helmet_m1_04_01"};
	case "PL": {"vn_b_helmet_m1_02_01"};
	default {selectRandom [
		"vn_b_helmet_m1_06_01",
		"vn_b_helmet_m1_02_01",
		"vn_b_helmet_m1_05_01"
	];};
	
	
	};
	

    _headGearCrew = "H_HelmetCrew_B";
    _headGearHeli = "H_PilotHelmetHeli_B";

    // Backpacks
private _backpack = switch (_type) do {
	case "AR": {"vn_b_pack_lw_02"};
	case "ARASS": {"vn_b_pack_lw_05"};
	case "CLS": {"vn_b_pack_lw_07"};
	case "SAPPER": {"vn_b_pack_trp_03_02"};
	default {"vn_b_pack_01_02"};
};
    _medpack = "vn_b_pack_lw_07";
	_arpack = "vn_b_pack_lw_02";
    _atpack = "B_Kitbag_cbr";
    _ladder = "ACE_TacticalLadder_Pack";
    _parachute = "ACE_NonSteerableParachute";
    // Backpack radios
    _backradio = "vn_b_pack_trp_04_02";    // Little to no cargo space
    _backradioLarge = "TFAR_rt1523g_big";   // More cargo space

    // Uniform
	private _uniform = selectRandom ["vn_b_uniform_macv_01_01","vn_b_uniform_macv_04_01","vn_b_uniform_macv_05_01"];
    // Vest
private _vest = switch (_type) do {
    case "AR": {"vn_b_vest_usarmy_06"};
    case "GRENADIER": {"vn_b_vest_usarmy_05"};	
    case "SL": {"vn_b_vest_usarmy_09"};
    case "PL": {"vn_b_vest_usarmy_08"};
    case "CLS": {"vn_b_vest_usarmy_07"};
    default {selectRandom [
        "vn_b_vest_usarmy_02",
        "vn_b_vest_usarmy_03"
        ];};
};

    // Weapons & Magazines
    _pistol = "vn_m1911";
    _pistolMag = "vn_m1911_mag";

    _rifle = "vn_m16";
    _rifleGL = "vn_m79";

    _rifleMag = "vn_m16_20_mag";
    _rifleTMag = "vn_m16_20_t_mag";

    _dmr = "arifle_SPAR_03_snd_F";
    _dmrMag = "20Rnd_762x51_Mag";

    _ar = "vn_m60";
    _arMag = "vn_m60_100_mag";
    _arTMag = _arMag;

    _mmg = "MMG_02_sand_F";
    _mmgMag = "130Rnd_338_Mag";

    // Launchers
    // 1-shot AT
    _lat = "rhs_weap_m72a7";

    // Heavier AT launcher
    _mat = "rhs_weap_rpg7";
    _matHE = "rhs_rpg7_OG7V_mag";
    _matHEAT = "rhs_rpg7_PG7VL_mag";

    // Lock-on AT launcher
    _hat = "launch_B_Titan_short_F";
    _hatHE = "Titan_AP";
    _hatHEAT = "Titan_AT";

    // AA launcher
    _aa = "launch_B_Titan_F";
    _aaMag = "Titan_AA";

    // Grenades
    _grenade = "vn_m67_grenade_mag";
    _smoke = "vn_m18_white_mag";
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
    _sightholo = "optic_holosight";
    _sightscope = "optic_hamr";
    _sightat = "";  // If the launcher has a sight slot it goes here
    _bipod = "bipod_01_f_snd";
    _sparebarrel = "ACE_SpareBarrel";   // Needed for some machine guns, place in backpack

    // Medical equipment
    _bandage = "ACE_elasticBandage";
    _tourniquet = "ACE_tourniquet";
    _morphine = "ACE_morphine";
    _adenosine = "ACE_adenosine";
    _splint = "ACE_splint";
    _epine = "ACE_epinephrine";
    _blood = "ACE_bloodIV";
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
    _binocular = "vn_m19_binocs_grn";
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
        _unit addPrimaryWeaponItem _sightholo; \
        _unit addPrimaryWeaponItem _laser; \
        _unit addPrimaryWeaponItem _muzzle; \
        _unit addPrimaryWeaponItem _bipod;

    #define BACKRADIO \
        _unit addBackpack _backradio; \
        clearAllItemsFromBackpack _unit; \
        addItemCountToBackpack(_smoke, 2); \
        addItemCountToBackpack(_smoker, 2); \
        addItemCountToBackpack(_smokeg, 2); \
        addItemCountToBackpack(_maptools, 2); 

    #define CLOTHES \
        _unit forceAddUniform _uniform; \
        addItemCountToUniform(_bandage, 6); \
        addItemCountToUniform(_morphine, 2); \
        addItemCountToUniform(_tourniquet, 2); \
        addItemCountToUniform(_splint, 1); \
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
        addItemCountToVest(_rifleMag, 9);

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
        addItemCountToBackpack(_epine, 8);
        addItemCountToBackpack(_morphine, 8);
        addItemCountToBackpack(_splint, 8);
        addItemCountToBackpack(_tourniquet, 8);
        addItemCountToBackpack(_bandage, 20);
        addItemCountToBackpack(_smoker, 2);
        addItemCountToBackpack(_smokeg, 2);
		addItemCountToBackpack(_rifleMag, 3);

    };

    case "TL": {
		RIFLEKIT;
		_unit addBackpack _backpack;
		addItemCountToBackpack(_rifleMag, 10);
		_unit addWeapon _binocular;
	};

    case "RIFLE": {
        RIFLEKIT;
		_unit addBackpack _backpack;
		addItemCountToBackpack(_rifleMag, 15);

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
        _unit addWeapon _rifleGL;
		PISTOLKIT;
		addItemCountToVest(_pistolMag, 5);
		addItemCountToBackpack(_glhe, 15);
		addItemCountToBackpack(_glsmokew, 10);
    };

    case "AR": {
        CLOTHES;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        GRENADES;
        addItemCountToVest(_arMag, 3);
        addItemCountToBackpack(_arMag, 4);
        //addItemCountToBackpack(_arTMag, 2);
        addItemCountToBackpack(_sparebarrel, 1);
        _unit addWeapon _ar;
    };

    case "ARASS": {
        RIFLEKIT;
        _unit addBackpack _arpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_arMag, 6);
        //addItemCountToBackpack(_arTMag, 2);
    };

    case "MMG": {
        CLOTHES;
        GRENADES;
        addItemCountToVest(_mmgMag, 1);
        addItemCountToBackpack(_mmgMag, 2);
        addItemCountToBackpack(_sparebarrel, 1);
        _unit addWeapon _mmg;
        _unit addPrimaryWeaponItem _bipod;
    };

    case "MMGASS": {
        RIFLEKIT;
        _unit addBackpack _backpack;
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
        _unit addBackpack _atpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_matHEAT, 1);
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
    };

    case "AMMOBOX": {
        _unit addItemCountToCargo(_rifleMag, 20);
        _unit addItemCountToCargo(_rifleTMag, 5);
        _unit addItemCountToCargo(_arMag, 4);
        _unit addItemCountToCargo(_grenade, 8);
        _unit addItemCountToCargo(_glhe, 12);
        _unit addItemCountToCargo(_glsmokew, 6);
        _unit addWeaponCargoGlobal [_lat, 1];
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
