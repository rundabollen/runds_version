/*************** ACE3 Settings ***************/
/*************** ACE Advanced ballistics ***************/
force ace_advanced_ballistics_enabled = false;          // Advanced ballistics turned off

/*************** ACE Fatigue ***************/
force ace_advanced_fatigue_enabled = true;              // Advanced fatigue on, no other config
force ace_advanced_fatigue_enableStaminaBar = true;     // Force stamina bar visible
force ace_advanced_fatigue_recoveryFactor = 1.4;        // Recover 40% faster
force ace_advanced_fatigue_terrainGradientFactor = 0.6; // 40% easier to run uphill

/*************** ACE Cookoff ***************/
force ace_cookoff_enable = 0;                           // Cookoff is off because it's annoying as hell
force ace_cookoff_enableAmmobox = false;
force ace_cookoff_enableAmmoCookoff = false;

/*************** ACE Pointing ***************/
force ace_finger_enabled = true;                        // allow pointing ingame
force ace_finger_maxRange = 5.0;                        // 5 meters isn't unreasonable for such an inaccurate action. But do reconsider for each mission.

/*************** ACE Misc ***************/
force ace_gforces_enabledFor = 0;                       // No pesky g-forces act on our pilots
force ace_interaction_disableNegativeRating = true;     // Shooting friendlies etc dont result in friendly AI killing you back.
force ace_captives_allowHandcuffOwnSide = false;        // Can't put handcuffs on own side because retards...
force ace_weather_windSimulation = false;               // turn off ACE's own map-based wind simulation
force ace_weather_showCheckAirTemperature = false;      // And no dumb "show air temp" action either..

/*************** ACE Hearing ***************/
force ace_hearing_enableCombatDeafness = false;         // you don't go deaf when shooting
force ace_hearing_autoAddEarplugsToUnits = false;       // And thanks to that we don't need those dumb earplugs

/*************** ACE Map ***************/
force ace_map_mapShowCursorCoordinates = true;          // Show coordinates next to the map cursor
force ace_map_gestures_enabled = true;                  // Allow pointing in the map interface

/*************** ACE Medical ***************/
/* AI specific */
force ace_medical_ai_enabledFor = 2;                      // Medical AI is Enabled for all clients and server
force ace_medical_AIDamageThreshold = 0.8;                // The amount of damage an AI unit can take before dying.
force ace_medical_bleedingCoefficient = 2;                // Coefficient for controlling the bleeding speed
force ace_medical_blood_bloodLifetime = 900;              // Lifetime of blood drop objects
force ace_medical_blood_enabledFor = 2;                   // Blood drops enabled for all units
force ace_medical_blood_maxBloodObjects = 300;            // Maximum number of blood drop objects that can be spawned
force ace_medical_fatalDamageSource = 2;                  // Either large hits to vital organs or sum of trauma can be fatal
force ace_medical_feedback_bloodVolumeEffectType = 2;     // Low blood volume effect is Icon + Color Fading
force ace_medical_feedback_painEffectType = 2;            // Pain effect type is Chromatic Aberation
force ace_medical_fractureChance = 0.3;                   // The probability of a fracture causing wound resulting in a fracture
force ace_medical_fractures = 1;                          // Splints Fully heal fractures
force ace_medical_gui_enableMedicalMenu = 1;              // Enable medical menu.
force ace_medical_gui_enableSelfActions = true;           // Enables medical actions for the Self Interaction Menu
force ace_medical_gui_maxDistance = 3;                    // Maximum distance from which the Medical Menu can be opened
force ace_medical_ivFlowRate = 3;                         // IV Transfusion Flow Rate
force ace_medical_limping = 1;                            // Limp on Open Wounds
force ace_medical_painCoefficient = 1.4;                  // Coefficient for controlling the intensity of pain adjustments
force ace_medical_playerDamageThreshold = 0.8;            // The amount of damage a player unit can take before dying.
force ace_medical_spontaneousWakeUpChance = 0.15;         // Unconscious Wake Up Chance
force ace_medical_spontaneousWakeUpEpinephrineBoost = 9;  // Epinephrine Wake Up Chance Boost
force ace_medical_statemachine_AIUnconsciousness = false; // AI will not go unconscious for any reason, and therefore never enter cardiac arrest.
force ace_medical_statemachine_cardiacArrestTime = 240;   // Controls how long it takes to die from cardiac arrest
force ace_medical_statemachine_fatalInjuriesAI = 0;       // AI will always die instantly.
force ace_medical_statemachine_fatalInjuriesPlayer = 1;   // Players can only receive fatal injuries when in Cardiac Arrest 
force ace_medical_treatment_advancedBandages = 1;         // Advanced Bandages are Enabled and wounds Can NOT Reopen
force ace_medical_treatment_advancedDiagnose = true;      // Enables the Check Pulse, Check Blood Pressure, and Check Response instead of generic Diagnose action.
force ace_medical_treatment_advancedMedication = true;    // Enables extended, more in-depth medication handling
force ace_medical_treatment_allowLitterCreation = true;   // Enables the creation of litter upon treatment
force ace_medical_treatment_allowSelfIV = 1;              // Enables the use of IV transfusions on oneself.
force ace_medical_treatment_allowSelfPAK = 1;             // Enables the use of PAKs to heal oneself
force ace_medical_treatment_allowSelfStitch = 1;          // Enables the use of surgical kits to stitch oneself
force ace_medical_treatment_allowSharedEquipment = 0;     // Use patient's equipment first
force ace_medical_treatment_clearTraumaAfterBandage = false;// Fully bandaged body parts are not completely healed
force ace_medical_treatment_consumePAK = 0;               // PAK is not consumed after use
force ace_medical_treatment_consumeSurgicalKit = 0;       // Surgical Kit is not consumed after use
force ace_medical_treatment_convertItems = 0;             // Convert vanilla medical items to ACE Medical items
force ace_medical_treatment_cprSuccessChance = 0.75;      // Probability that CPR will be successful in restoring heart rhythm
force ace_medical_treatment_holsterRequired = 0;          // Holstered weapon is not required to perform medical actions
force ace_medical_treatment_litterCleanupDelay = 600;     // Litter lifetime is 600 seconds
force ace_medical_treatment_locationEpinephrine = 0;      // Epinephrine can be used anywhere
force ace_medical_treatment_locationPAK = 3;              // PAK can be used in vehicles and facilities
force ace_medical_treatment_locationsBoostTraining = false;// Locations do not boost training
force ace_medical_treatment_locationSurgicalKit = 0;      // Surgical Kit can be used Anywhere
force ace_medical_treatment_maxLitterObjects = 200;       // Maximum number of litter objects which can be spawned
force ace_medical_treatment_medicEpinephrine = 0;         // Anyone can administer epinephrine
force ace_medical_treatment_medicIV = 1;                  // Only medic can set IVs
force ace_medical_treatment_medicPAK = 1;                 // Only medic can use PAK
force ace_medical_treatment_medicSurgicalKit = 1;         // Only medic can use Surgical Kit
force ace_medical_treatment_timeCoefficientPAK = 1.5;     // Time Coefficient that Modifies how long a PAK takes to apply
force ace_medical_treatment_woundReopenChance = 1;        // Wound Reopening Coefficient

/*************** ACE Mortar ***************/
force ace_mk6mortar_airResistanceEnabled = true;        // Mortar rounds are affected by air and wind
force ace_mk6mortar_allowComputerRangefinder = false;   // Can't use the artillery computer interface
force ace_mk6mortar_allowCompass = true;                // CAN use the sight
force ace_mk6mortar_useAmmohandling = true;             // Manual loading of mortars required - THIS AFFECTS AI TOO

/*************** ACE NVG ***************/
force ace_nightvision_aimDownSightsBlur = 1;            // Sights are blurred when using NVG
force ace_nightvision_disableNVGsWithSights = false;    // Allow NVG in sights so there's a reason to have them on
force ace_nightvision_effectScaling = 0.5;              // Overall effect
force ace_nightvision_fogScaling = 0.5;                 // How much fog in terraing
force ace_nightvision_noiseScaling = 0.5;               // How much noise
force ace_nightvision_shutterEffects = true;            // Turn on the autogating effects

/*************** ACE Overheating ***************/
force ace_overheating_unJamOnReload = true;             // Reloading attempts to unjam the weapon - people are crap at remembering keybinds
force ace_overheating_enabled = true;                   // Weapons can overheat

/*************** ACEX Headless ***************/
force acex_headless_enabled = true;                     // Headless is enabled
force acex_headless_delay = 15;                         // 15 second delay between transfers
force acex_headless_endMission = 0;                     // End mission disabled
force acex_headless_log = false;                        // log disabled
force acex_headless_transferLoadouts = 1;               // transfer current loadout

/*************** TFAR ***************/
force TFAR_objectInterceptionEnabled = false;            // Terrain interception disabled to avoid loud crackling noise in headphones
force TFAR_spectatorCanHearEnemyUnits = true;           // Spectator can hear enemy units
force TFAR_spectatorCanHearFriendlies = true;           // Spectator can hear friendly units
force TFAR_giveMicroDagrToSoldier = true;               // All soldiers get a MicroDAGR radio programmer
force TFAR_AICanHearPlayer = true;                      // AI can hear players talk
force TFAR_AICanHearSpeaker = true;                     // AI can hear radio speakers
force TFAR_SameLRFrequenciesForSide = true;				// all radios for side have same channel set?
force TFAR_SameSRFrequenciesForSide = true;				// all radios for side have same channel set?
force TFAR_setting_defaultFrequencies_lr_east = "70";
force TFAR_setting_defaultFrequencies_lr_independent = "70";
force TFAR_setting_defaultFrequencies_lr_west = "70";
force TFAR_setting_defaultFrequencies_sr_east = "110,120,130,140,150,160,170,180,190";
force TFAR_setting_defaultFrequencies_sr_independent = "110,120,130,140,150,160,170,180,190";
force TFAR_setting_defaultFrequencies_sr_west = "110,120,130,140,150,160,170,180,190";
force TFAR_globalRadioRangeCoef = 1.00;					// Range coefficient, 1.00 default

/*************** TUN - Mobile Spawn Point ***************/
force tun_msp_enable = true;                                        // MSP enabled
force tun_msp_progresbar_time_pack = 5;                             // Time taken for teardown
force tun_msp_progresbar_time_setup = 5;                            // Time taken for setup
force tun_msp_clasnames_civilian = "C_Truck_02_transport_F";        // Vehicles that civilians can use as MSP
force tun_msp_clasnames_east = "vn_o_wheeled_z157_02_nva65";                // Vehicles that REDFOR can use as MSP
force tun_msp_clasnames_resistance = "vn_i_wheeled_m54_03";      // Vehicles that INDEP can use as MSP
force tun_msp_clasnames_west = "vn_b_wheeled_m54_01";                  // Vehicles that BLUFOR can use as MSP
force tun_msp_contested_radius_max = 50;                            // Radius where there needs to be more enemies than allies to disable MSP
force tun_msp_contested_radius_min = 25;                            // Within this radius MSP is always disabled
force tun_msp_report_enemies_range = 75;                            // Within which range enemies are reported as nearby ?
force tun_msp_report_enemies = true;                                // If msp availability due to enemy presence is reported
force tun_msp_contested_check_interval = 30;                        // Time in seconds
force tun_msp_report_enemies_interval = 30;                         // Time in seconds

/*************** TUN - Respawn System ***************/
force tun_respawn_enable = true;                                    // Is respawn system enabled
force tun_respawn_delayed_respawn = 0;                              // If remaining respawn time is less than x percent new deaths skip next wave
force tun_respawn_killJIP = true;                                   // Kill players that JIP
force tun_respawn_killJIP_time = 15;                                // Time from game start until from when JIPers are killed in minutes
force tun_respawn_respawn_type = "sidetickets";                         // default: endless wave, "sidetickets": side tickets
force tun_respawn_spectate_Cameramode_1st = true;                   // 1st person spectator camera
force tun_respawn_spectate_Cameramode_3th = true;                   // 3rd person spectator camera
force tun_respawn_spectate_Cameramode_free = true;                  // free spectator camera
force tun_respawn_tickets_civ = 50;                                  // Number of tickets for CIV
force tun_respawn_tickets_east = 50;                                 // Number of tickets for OPFOR
force tun_respawn_tickets_guer = 50;                                 // Number of tickets INDEP
force force tun_respawn_tickets_west = 50;                           // Number of tickets for BLUFOR
force tun_respawn_time_civ = 15;                                    // Time in MINUTES
force tun_respawn_time_east = 15;                                    // Time in MINUTES
force tun_respawn_time_guer = 15;                                   // Time in MINUTES
force tun_respawn_time_west = 15;                                   // Time in MINUTES
force tun_respawn_use_gearscript = false;                           // Wether or not to use AFI gearscript ?? How use saved gear instead ??
force tun_respawn_waiting_area_range = 100;							// diameter of waiting area in meters
force tun_respawn_forced_respawn = false;							// "Only forced respawn (scripted) no timed waves!
