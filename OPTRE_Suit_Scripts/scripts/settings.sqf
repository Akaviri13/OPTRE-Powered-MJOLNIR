if (isClass(configFile >> "CfgPatches" >> "OPTRE_Suit_Scripts_DEV")) exitWith {};
//CBA SETTINGS FOR POWERED MJOLNIR

optre_merge_helmet_arrays = {
	optre_powered_suits_helmets = optre_mjolnir_helmet_hud_EVA + optre_mjolnir_helmet_hud_MarkIV + optre_mjolnir_helmet_hud_MarkV + optre_mjolnir_helmet_hud_MarkVI + optre_mjolnir_helmet_hud_MarkVB +optre_mjolnir_helmet_hud_MP + optre_mjolnir_helmet_hud_RECON + optre_mjolnir_helmet_hud_Sangheili;
};

[
    "OPTRE_MJOLNIR_ENABLE_JUMP",
    "CHECKBOX",
    "Enable Jumping",
    "OPTRE Powered MJOLNIR",
    True,
    True,
    {}
] call CBA_fnc_addSetting;

[
    "OPTRE_MJOLNIR_JUMP_FORWARD",
    "SLIDER",
    "Jump Forward Force Factor",
    "OPTRE Powered MJOLNIR",
    [0.1,10,3,1],
    True,
    {}
] call CBA_fnc_addSetting;

[
    "OPTRE_MJOLNIR_JUMP_UP_HIGH",
    "SLIDER",
    "High Jump Up Force Factor",
    "OPTRE Powered MJOLNIR",
    [0.1,10,3,1],
    True,
    {}
] call CBA_fnc_addSetting;

[
    "OPTRE_MJOLNIR_JUMP_UP_LOW",
    "SLIDER",
    "Low Jump Up Force Factor",
    "OPTRE Powered MJOLNIR",
    [0.1,10,5,1],
    True,
    {}
] call CBA_fnc_addSetting;

[
    "OPTRE_MJOLNIR_PREVENT_FALLDAMAGE",
    "CHECKBOX",
    "Prevent Falldamage",
    "OPTRE Powered MJOLNIR",
    True,
    True,
    {}
] call CBA_fnc_addSetting;

[
    "OPTRE_MJOLNIR_SHOW_ACTIVATE",
    "CHECKBOX",
    "Show Activate Suit Option",
    "OPTRE Powered MJOLNIR",
    True,
    True,
    {}
] call CBA_fnc_addSetting;

[
    "OPTRE_MJOLNIR_SHOW_DEACTIVATE",
    "CHECKBOX",
    "Show Deactivate Suit Option",
    "OPTRE Powered MJOLNIR",
    False,
    False,
    {}
] call CBA_fnc_addSetting;

[
    "OPTRE_MJOLNIR_SHIELD_ENERGY",
    "SLIDER",
    "Player Shield Value",
    "OPTRE Powered MJOLNIR",
    [50,1000,100,0],
    True,
    {}
] call CBA_fnc_addSetting;

[
    "OPTRE_MJOLNIR_SHIELD_REGEN",
    "SLIDER",
    "Player Shield Regen Factor",
    "OPTRE Powered MJOLNIR",
    [0.5,10,1,1],
    True,
    {}
] call CBA_fnc_addSetting;

[
    "OPTRE_MJOLNIR_ACTIVATE_AI",
    "CHECKBOX",
    "Shields On AI",
    "OPTRE Powered MJOLNIR",
    True,
    True,
    {}
] call CBA_fnc_addSetting;

[
    "OPTRE_MJOLNIR_SHIELD_ENERGY_AI",
    "SLIDER",
    "AI Shield Value",
    "OPTRE Powered MJOLNIR",
    [50,1000,100,0],
    True,
    {}
] call CBA_fnc_addSetting;

[
    "OPTRE_MJOLNIR_SHIELD_REGEN_AI",
    "SLIDER",
    "AI Shield Regen Factor",
    "OPTRE Powered MJOLNIR",
    [0.5,10,1,1],
    True,
    {}
] call CBA_fnc_addSetting;

[
    "OPTRE_MJOLNIR_INCREASED_SPEED",
    "CHECKBOX",
    "Increased Speed",
    "OPTRE Powered MJOLNIR",
    True,
    True,
    {}
] call CBA_fnc_addSetting;

[
    "OPTRE_MJOLNIR_SPEED_MODIFIER",
    "SLIDER",
    "Speed Modifier",
    "OPTRE Powered MJOLNIR",
    [1,5,1.3,1],
    True,
    {}
] call CBA_fnc_addSetting;

[
    "OPTRE_MJOLNIR_SUPPRESS_RECOIL",
    "CHECKBOX",
    "Suppress Recoil",
    "OPTRE Powered MJOLNIR",
    True,
    True,
    {}
] call CBA_fnc_addSetting;

[
    "OPTRE_MJOLNIR_RECOIL_MODIFIER",
    "SLIDER",
    "Recoil Modifier",
    "OPTRE Powered MJOLNIR",
    [0,1,0.3,1],
    True,
    {}
] call CBA_fnc_addSetting;

[
    "OPTRE_MJOLNIR_ENABLE_SPARKS_HIT",
    "CHECKBOX",
    "Sparks On Hit",
    "OPTRE Powered MJOLNIR",
    True,
    True,
    {}
] call CBA_fnc_addSetting;

[
    "OPTRE_MJOLNIR_ENABLE_SPARKS_SHIELD",
    "CHECKBOX",
    "Sparks When Shield Depleted",
    "OPTRE Powered MJOLNIR",
    True,
    True,
    {}
] call CBA_fnc_addSetting;

[
    "OPTRE_MJOLNIR_CAMSHAKE",
    "CHECKBOX",
    "Enable Camshake",
    "OPTRE Powered MJOLNIR",
    True,
    nil,
    {}
] call CBA_fnc_addSetting;

[
    "OPTRE_MJOLNIR_HUD_ACTIVE_INTRO",
    "CHECKBOX",
    "Hud Activation Intro",
    "OPTRE Powered MJOLNIR",
    True,
    nil,
    {}
] call CBA_fnc_addSetting;

[
    "OPTRE_MJOLNIR_HUD_OVERLAY",
    "CHECKBOX",
    "Show Hud Overlay",
    "OPTRE Powered MJOLNIR",
    True,
    nil,
    {}
] call CBA_fnc_addSetting;

[
    "OPTRE_MJOLNIR_ENERGY_BAR_ACTIVE",
    "CHECKBOX",
    "Show Shield Energy Bar",
    "OPTRE Powered MJOLNIR",
    True,
    nil,
    {}
] call CBA_fnc_addSetting;

[
    "OPTRE_MJOLNIR_ENERGY_BAR_COLOR",
    "LIST",
    "Color of Energy Bar",
    "OPTRE Powered MJOLNIR",
    [[0,1],["Blue","Purple"],0],
    nil,
    {}
] call CBA_fnc_addSetting;

[
    "OPTRE_MJOLNIR_ENERGY_BAR_SIZE",
    "LIST",
    "Size of Energy Bar",
    "OPTRE Powered MJOLNIR",
    [[0,1,2,3,4],["Size 1","Size 2","Size 3","Size 4","Size 5"],1],
    nil,
    {}
] call CBA_fnc_addSetting;

[
    "OPTRE_POWERED_SUITS_SETTING",
    "EDITBOX",
    "Vests With Activate Option",
    "OPTRE Powered MJOLNIR",
    "OPTRE_MJOLNIR_Mk4Armor,OPTRE_MJOLNIR_Mk4Armor_Blue,OPTRE_MJOLNIR_Mk4Armor_Red,OPTRE_FC_MJOLNIR_MKV_Armor,OPTRE_FC_MJOLNIR_MKV_Armor_Black,OPTRE_FC_MJOLNIR_MKV_Armor_Caboose,OPTRE_FC_MJOLNIR_MKV_Armor_Freeman,OPTRE_FC_MJOLNIR_MKV_Armor_Church,OPTRE_FC_MJOLNIR_MKV_Armor_Donut,OPTRE_FC_MJOLNIR_MKV_Armor_Simmons,OPTRE_FC_MJOLNIR_MKV_Armor_Night,OPTRE_FC_MJOLNIR_MKV_Armor_Olive,OPTRE_FC_MJOLNIR_MKV_Armor_Grif,OPTRE_FC_MJOLNIR_MKV_Armor_Sarge,OPTRE_FC_MJOLNIR_MKV_Armor_Tucker,OPTRE_MJOLNIR_MkVBArmor,MJOLNIR_Mark_VI_Armour,MJOLNIR_Mark_VI_Armour_Caboose,MJOLNIR_Mark_VI_Armour_Church,MJOLNIR_Mark_VI_Armour_Doc,MJOLNIR_Mark_VI_Armour_Desert,MJOLNIR_Mark_VI_Armour_Donut,MJOLNIR_Mark_VI_Armour_Grif,MJOLNIR_Mark_VI_Armour_Kaikaina,MJOLNIR_Mark_VI_Armour_Lopez,MJOLNIR_Mark_VI_Armour_North,MJOLNIR_Mark_VI_Armour_Sarge,MJOLNIR_Mark_VI_Armour_Simmons,MJOLNIR_Mark_VI_Armour_Snow,MJOLNIR_Mark_VI_Armour_South,MJOLNIR_Mark_VI_Armour_Tucker,MJOLNIR_Mark_VI_Armour_Urban,MJOLNIR_Mark_VI_Armour_Washington,MJOLNIR_Mark_VI_Armour_Woodland,MJOLNIR_Mark_VI_Armour_York,OPTRE_FC_Elite_Armor_FieldMarshal,OPTRE_FC_Elite_Armor_HonorGuard_Ultra,OPTRE_FC_Elite_Armor_HonorGuard,OPTRE_FC_Elite_Armor_Major,OPTRE_FC_Elite_Armor_Minor,OPTRE_FC_Elite_Armor_SpecOps,OPTRE_FC_Elite_Armor_Ultra,OPTRE_FC_Elite_Armor_Zealot",
    True,
    {
		optre_powered_suits = OPTRE_POWERED_SUITS_SETTING splitString ",";
	}
] call CBA_fnc_addSetting;

[
    "OPTRE_JUMP_SUITS_SETTING",
    "EDITBOX",
    "Uniforms That Allow Jumping",
    "OPTRE Powered MJOLNIR",
    "OPTRE_MJOLNIR_Undersuit,OPTRE_MJOLNIR_Dress_Uniform,MJOLNIR_MKVI_Undersuit,OPTRE_FC_Elite_CombatSkin",
    True,
    {
		optre_jump_enabled_suits = OPTRE_JUMP_SUITS_SETTING splitString ",";
	}
] call CBA_fnc_addSetting;

[
    "OPTRE_HELMET_HUD_EVA",
    "EDITBOX",
    "Helmets With EVA Hud",
    "OPTRE Powered MJOLNIR",
    "OPTRE_MJOLNIR_EVAHelmet,OPTRE_MJOLNIR_EVAHelmet_Emily",
    True,
    {
		optre_mjolnir_helmet_hud_EVA = OPTRE_HELMET_HUD_EVA splitString ",";
		call optre_merge_helmet_arrays;
		
	}
] call CBA_fnc_addSetting;

[
    "OPTRE_HELMET_HUD_MARKIV",
    "EDITBOX",
    "Helmets With MarkIV Hud",
    "OPTRE Powered MJOLNIR",
    "OPTRE_MJOLNIR_Mk4Helmet,OPTRE_MJOLNIR_Mk4Helmet_Blue,OPTRE_MJOLNIR_Mk4Helmet_Red",
    True,
    {
		optre_mjolnir_helmet_hud_MarkIV = OPTRE_HELMET_HUD_MARKIV splitString ",";
		call optre_merge_helmet_arrays;
	}
] call CBA_fnc_addSetting;

[
    "OPTRE_HELMET_HUD_MARKV",
    "EDITBOX",
    "Helmets With MarkV Hud",
    "OPTRE Powered MJOLNIR",
    "OPTRE_FC_MJOLNIR_MKV_Helmet,OPTRE_FC_MJOLNIR_MKV_Helmet_Black,OPTRE_FC_MJOLNIR_MKV_Helmet_Caboose,OPTRE_FC_MJOLNIR_MKV_Helmet_Freeman,OPTRE_FC_MJOLNIR_MKV_Helmet_Church,OPTRE_FC_MJOLNIR_MKV_Helmet_Donut,OPTRE_FC_MJOLNIR_MKV_Helmet_Simmons,OPTRE_FC_MJOLNIR_MKV_Helmet_Night,OPTRE_FC_MJOLNIR_MKV_Helmet_Olive,OPTRE_FC_MJOLNIR_MKV_Helmet_Grif,OPTRE_FC_MJOLNIR_MKV_Helmet_Sarge,OPTRE_FC_MJOLNIR_MKV_Helmet_Tucker",
    True,
    {
		optre_mjolnir_helmet_hud_MarkV = OPTRE_HELMET_HUD_MARKV splitString ",";
		call optre_merge_helmet_arrays;
	}
] call CBA_fnc_addSetting;

[
    "OPTRE_HELMET_HUD_MARKVB",
    "EDITBOX",
    "Helmets With MarkV[B] Hud",
    "OPTRE Powered MJOLNIR",
    "OPTRE_MJOLNIR_MkVBHelmet",
    True,
    {
		optre_mjolnir_helmet_hud_MarkVB = OPTRE_HELMET_HUD_MARKVB splitString ",";
		call optre_merge_helmet_arrays;
	}
] call CBA_fnc_addSetting;

[
    "OPTRE_HELMET_HUD_MARKVI",
    "EDITBOX",
    "Helmets With MarkVI Hud",
    "OPTRE Powered MJOLNIR",
    "MJOLNIR_Mark_VI_Helmet,MJOLNIR_Mark_VI_Helmet_Caboose,MJOLNIR_Mark_VI_Helmet_Church,MJOLNIR_Mark_VI_Helmet_Desert,MJOLNIR_Mark_VI_Helmet_Doc,MJOLNIR_Mark_VI_Helmet_Donut,MJOLNIR_Mark_VI_Helmet_Grif,MJOLNIR_Mark_VI_Helmet_Kaikaina,MJOLNIR_Mark_VI_Helmet_Lopez,MJOLNIR_Mark_VI_Helmet_North,MJOLNIR_Mark_VI_Helmet_Simmons,MJOLNIR_Mark_VI_Helmet_Sarge,MJOLNIR_Mark_VI_Helmet_Snow,MJOLNIR_Mark_VI_Helmet_South,MJOLNIR_Mark_VI_Helmet_Tucker,MJOLNIR_Mark_VI_Helmet_Urban,MJOLNIR_Mark_VI_Helmet_Washington,MJOLNIR_Mark_VI_Helmet_Woodland,MJOLNIR_Mark_VI_Helmet_York",
    True,
    {
		optre_mjolnir_helmet_hud_MarkVI = OPTRE_HELMET_HUD_MARKVI splitString ",";
		call optre_merge_helmet_arrays;
	}
] call CBA_fnc_addSetting;

[
    "OPTRE_HELMET_HUD_MP",
    "EDITBOX",
    "Helmets With MP Hud",
    "OPTRE Powered MJOLNIR",
    "OPTRE_MJOLNIR_MPHelmet",
    True,
    {
		optre_mjolnir_helmet_hud_MP = OPTRE_HELMET_HUD_MP splitString ",";
		call optre_merge_helmet_arrays;
	}
] call CBA_fnc_addSetting;

[
    "OPTRE_HELMET_HUD_RECON",
    "EDITBOX",
    "Helmets With Recon Hud",
    "OPTRE Powered MJOLNIR",
    "OPTRE_MJOLNIR_ReconHelmet",
    True,
    {
		optre_mjolnir_helmet_hud_RECON = OPTRE_HELMET_HUD_RECON splitString ",";
		call optre_merge_helmet_arrays;
	}
] call CBA_fnc_addSetting;

[
    "OPTRE_HELMET_HUD_SANGHEILI",
    "EDITBOX",
    "Helmets With Sangheili Hud",
    "OPTRE Powered MJOLNIR",
    "OPTRE_FC_Elite_Helmet_FieldMarshal,OPTRE_FC_Elite_Helmet_HonorGuard_Ultra,OPTRE_FC_Elite_Helmet_HonorGuard,OPTRE_FC_Elite_Helmet_Major,OPTRE_FC_Elite_Helmet_Minor,OPTRE_FC_Elite_Helmet_SpecOps,OPTRE_FC_Elite_Helmet_Ultra,OPTRE_FC_Elite_Helmet_Zealot",
    True,
    {
		optre_mjolnir_helmet_hud_Sangheili = OPTRE_HELMET_HUD_SANGHEILI splitString ",";
		call optre_merge_helmet_arrays;
	}
] call CBA_fnc_addSetting;