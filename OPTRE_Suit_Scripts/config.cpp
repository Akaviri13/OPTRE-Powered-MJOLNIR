class CfgPatches
{
	class OPTRE_Suit_Scripts
	{
		units[]={};
		weapons[]={};
		requiredVersion=1;
		requiredAddons[]={};
	};
};

class Extended_Preinit_EventHandlers
{
	class optre_powered_mjolnir_settings_init
	{
		init="execVM '\OPTRE_Suit_Scripts\scripts\settings.sqf';";
	};
};
class Extended_PostInit_EventHandlers
{
	class optre_powered_mjolnir_init
	{
		init="execVM '\OPTRE_Suit_Scripts\scripts\init.sqf';";
	};
	class optre_powered_mjolnir_AI_system_init
	{
		init="execVM '\OPTRE_Suit_Scripts\scripts\system_AI.sqf';";
	};
};

class RscTitles
{

	class RscProgress
	{
		type=8;
		style=0;
		shadow=2;
		colorFrame[]={0,0,0,1};
		colorBar[]=
		{
			"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])",
			"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])",
			"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",
			"(profilenamespace getvariable ['GUI_BCG_RGB_A',0.8])"
		};
		texture="\A3\ui_f\data\GUI\RscCommon\RscProgress\progressbar_ca.paa";
		w=0.25;
		h=0.029999999;
	};
	
	class OPTRE_SHIELD_BAR
	{
		idd=10003;
		onload="uiNamespace setVariable [""OPTRE_TAG_SHIELD"", _this select 0];";
		duration=0.2;
		fadein = 0;
		fadeout = 0.1;
		class Controls
		{
			class Progress: RscProgress
			{
				color[]={0.5,0.09999998,0.09999998,0.80000001};
				colorFrame[]={0,0,0,0};
				colorBar[]={0.5,0.89999998,0.89999998,0.80000001};
				colorBackground[]={0,1,0,1};
				idc=-1;
				x="0.397 * safezoneW + safezoneX";
				y="0.0572 * safezoneH + safezoneY";
				w="0.5";		
				h="0.1";
			};
		};
	};	
	
	class OPTRE_SHIELD_BAR_VERY_SMALL
	{
		idd=10003;
		onload="uiNamespace setVariable [""OPTRE_TAG_SHIELD"", _this select 0];";
		duration=0.2;
		fadein = 0;
		fadeout = 0.1;
		class Controls
		{
			class Progress: RscProgress
			{
				color[]={0.5,0.09999998,0.09999998,0.80000001};
				colorFrame[]={0,0,0,0};
				colorBar[]={0.5,0.89999998,0.89999998,0.80000001};
				colorBackground[]={0,1,0,1};
				idc=-1;
				x="0.397 * safezoneW + safezoneX";
				y="0.0572 * safezoneH + safezoneY";
				w="0.585";		
				h="0.1155";
			};
		};
	};	
	class OPTRE_SHIELD_BAR_SMALL
	{
		idd=10003;
		onload="uiNamespace setVariable [""OPTRE_TAG_SHIELD"", _this select 0];";
		duration=0.2;
		fadein = 0;
		fadeout = 0.1;
		class Controls
		{
			class Progress: RscProgress
			{
				color[]={0.5,0.09999998,0.09999998,0.80000001};
				colorFrame[]={0,0,0,0};
				colorBar[]={0.5,0.89999998,0.89999998,0.80000001};
				colorBackground[]={0,1,0,1};
				idc=-1;
				x="0.397 * safezoneW + safezoneX";
				y="0.0572 * safezoneH + safezoneY";
				w="0.5";		
				h="0.1";
			};
		};
	};
	class OPTRE_SHIELD_BAR_NORMAL
	{
		idd=10003;
		onload="uiNamespace setVariable [""OPTRE_TAG_SHIELD"", _this select 0];";
		duration=0.2;
		fadein = 0;
		fadeout = 0.1;
		class Controls
		{
			class Progress: RscProgress
			{
				color[]={0.5,0.09999998,0.09999998,0.80000001};
				colorFrame[]={0,0,0,0};
				colorBar[]={0.5,0.89999998,0.89999998,0.80000001};
				colorBackground[]={0,1,0,1};
				idc=-1;
				x="0.397 * safezoneW + safezoneX";
				y="0.0572 * safezoneH + safezoneY";
				w="0.393";		
				h="0.0785";
			};
		};
	};	
	class OPTRE_SHIELD_BAR_LARGE
	{
		idd=10003;
		onload="uiNamespace setVariable [""OPTRE_TAG_SHIELD"", _this select 0];";
		duration=0.2;
		fadein = 0;
		fadeout = 0.1;
		class Controls
		{
			class Progress: RscProgress
			{
				color[]={0.5,0.09999998,0.09999998,0.80000001};
				colorFrame[]={0,0,0,0};
				colorBar[]={0.5,0.89999998,0.89999998,0.80000001};
				colorBackground[]={0,1,0,1};
				idc=-1;
				x="0.397 * safezoneW + safezoneX";
				y="0.0572 * safezoneH + safezoneY";
				w="0.3234";		
				h="0.0653";
			};
		};
	};	
	class OPTRE_SHIELD_BAR_VERY_LARGE
	{
		idd=10003;
		onload="uiNamespace setVariable [""OPTRE_TAG_SHIELD"", _this select 0];";
		duration=0.2;
		fadein = 0;
		fadeout = 0.1;
		class Controls
		{
			class Progress: RscProgress
			{
				color[]={0.5,0.09999998,0.09999998,0.80000001};
				colorFrame[]={0,0,0,0};
				colorBar[]={0.5,0.89999998,0.89999998,0.80000001};
				colorBackground[]={0,1,0,1};
				idc=-1;
				x="0.397 * safezoneW + safezoneX";
				y="0.0572 * safezoneH + safezoneY";
				w="0.2744";		
				h="0.055";
			};
		};
	};
	
	class OPTRE_SHIELD_BAR_COVENANT
	{
		idd=10003;
		onload="uiNamespace setVariable [""OPTRE_TAG_SHIELD"", _this select 0];";
		duration=0.2;
		fadein = 0;
		fadeout = 0.1;
		class Controls
		{
			class Progress: RscProgress
			{
				color[]={0.80000001,0.395,0.68,0.392};
				colorFrame[]={0,0,0,0};
				colorBar[]={0.80000001,0.395,0.68,0.392};
				colorBackground[]={0,1,0,1};
				idc=-1;
				x="0.397 * safezoneW + safezoneX";
				y="0.0572 * safezoneH + safezoneY";
				w="0.5";		
				h="0.1";
			};
		};
	};	
	
	class OPTRE_SHIELD_BAR_COVENANT_VERY_SMALL
	{
		idd=10003;
		onload="uiNamespace setVariable [""OPTRE_TAG_SHIELD"", _this select 0];";
		duration=0.2;
		fadein = 0;
		fadeout = 0.1;
		class Controls
		{
			class Progress: RscProgress
			{
				color[]={0.80000001,0.395,0.68,0.392};
				colorFrame[]={0,0,0,0};
				colorBar[]={0.80000001,0.395,0.68,0.392};
				colorBackground[]={0,1,0,1};
				idc=-1;
				x="0.397 * safezoneW + safezoneX";
				y="0.0572 * safezoneH + safezoneY";
				w="0.585";		
				h="0.1155";
			};
		};
	};	
	class OPTRE_SHIELD_BAR_COVENANT_SMALL
	{
		idd=10003;
		onload="uiNamespace setVariable [""OPTRE_TAG_SHIELD"", _this select 0];";
		duration=0.2;
		fadein = 0;
		fadeout = 0.1;
		class Controls
		{
			class Progress: RscProgress
			{
				color[]={0.80000001,0.395,0.68,0.392};
				colorFrame[]={0,0,0,0};
				colorBar[]={0.80000001,0.395,0.68,0.392};
				colorBackground[]={0,1,0,1};
				idc=-1;
				x="0.397 * safezoneW + safezoneX";
				y="0.0572 * safezoneH + safezoneY";
				w="0.5";		
				h="0.1";
			};
		};
	};
	class OPTRE_SHIELD_BAR_COVENANT_NORMAL
	{
		idd=10003;
		onload="uiNamespace setVariable [""OPTRE_TAG_SHIELD"", _this select 0];";
		duration=0.2;
		fadein = 0;
		fadeout = 0.1;
		class Controls
		{
			class Progress: RscProgress
			{
				color[]={0.80000001,0.395,0.68,0.392};
				colorFrame[]={0,0,0,0};
				colorBar[]={0.80000001,0.395,0.68,0.392};
				colorBackground[]={0,1,0,1};
				idc=-1;
				x="0.397 * safezoneW + safezoneX";
				y="0.0572 * safezoneH + safezoneY";
				w="0.393";		
				h="0.0785";
			};
		};
	};	
	class OPTRE_SHIELD_BAR_COVENANT_LARGE
	{
		idd=10003;
		onload="uiNamespace setVariable [""OPTRE_TAG_SHIELD"", _this select 0];";
		duration=0.2;
		fadein = 0;
		fadeout = 0.1;
		class Controls
		{
			class Progress: RscProgress
			{
				color[]={0.80000001,0.395,0.68,0.392};
				colorFrame[]={0,0,0,0};
				colorBar[]={0.80000001,0.395,0.68,0.392};
				colorBackground[]={0,1,0,1};
				idc=-1;
				x="0.397 * safezoneW + safezoneX";
				y="0.0572 * safezoneH + safezoneY";
				w="0.3234";		
				h="0.0653";
			};
		};
	};	
	class OPTRE_SHIELD_BAR_COVENANT_VERY_LARGE
	{
		idd=10003;
		onload="uiNamespace setVariable [""OPTRE_TAG_SHIELD"", _this select 0];";
		duration=0.2;
		fadein = 0;
		fadeout = 0.1;
		class Controls
		{
			class Progress: RscProgress
			{
				color[]={0.80000001,0.395,0.68,0.392};
				colorFrame[]={0,0,0,0};
				colorBar[]={0.80000001,0.395,0.68,0.392};
				colorBackground[]={0,1,0,1};
				idc=-1;
				x="0.397 * safezoneW + safezoneX";
				y="0.0572 * safezoneH + safezoneY";
				w="0.2744";		
				h="0.055";
			};
		};
	};
	
	class RscPicture
	{
		idc = -1;
		type = 0;
		style = 48;
		colorBackground[] = {0,0,0,0};
		colorText[] = {1,1,1,1};
		font = "PuristaLight";
		sizeEx = 1;
		lineSpacing = 0;
		text = "";
		fixedWidth = 0;
		shadow = 0;
	};
	
	class RscText
	{
		deletable=0;
		fade=0;
		type=0;
		idc=-1;
		colorBackground[]={0,0,0,0};
		colorText[]={1,1,1,1};
		text="";
		fixedWidth=0;
		x=0;
		y=0;
		h=0.037;
		w=0.30000001;
		style=0;
		shadow=1;
		colorShadow[]={0,0,0,0.5};
		font="RobotoCondensed";
		SizeEx="(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
		linespacing=1;
		tooltipColorText[]={1,1,1,1};
		tooltipColorBox[]={1,1,1,1};
		tooltipColorShade[]={0,0,0,0.64999998};
	};
	
	class EVA_HUD {
		idd = -1;
		movingEnable = 0;
		duration = 10000;
		fadein = 0;
		fadeout = 0;	
		name = "EVA_HUD";
		controls[] = {"Picture"};
		class Picture: RscPicture
		{
			x=safeZoneX; y=safeZoneY; w=safeZoneW; h=safeZoneH;
			idc = 1200;
			text = "\OPTRE_Suit_Scripts\textures\EVA_Hud_No_Crosshair.paa";
		};
	};

	class MARKIV_HUD {
		idd = -1;
		movingEnable = 0;
		duration = 10000;
		fadein = 0;
		fadeout = 0;	
		name = "MARKIV_HUD";
		controls[] = {"Picture"};
		class Picture: RscPicture
		{
			x=safeZoneX; y=safeZoneY; w=safeZoneW; h=safeZoneH;
			idc = 1200;
			text = "\OPTRE_Suit_Scripts\textures\MarkIV_Hud_No_Crosshair.paa";
		};
	};

	class MARKV_HUD {
		idd = -1;
		movingEnable = 0;
		duration = 10000;
		fadein = 0;
		fadeout = 0;	
		name = "MARKV_HUD";
		controls[] = {"Picture"};
		class Picture: RscPicture
		{
			x=safeZoneX; y=safeZoneY; w=safeZoneW; h=safeZoneH;
			idc = 1200;
			text = "\OPTRE_Suit_Scripts\textures\MarkV_Hud_No_Crosshair.paa";
		};
	};
	
	class MARKVB_HUD {
		idd = -1;
		movingEnable = 0;
		duration = 10000;
		fadein = 0;
		fadeout = 0;	
		name = "MARKV_HUD";
		controls[] = {"Picture"};
		class Picture: RscPicture
		{
			x=safeZoneX; y=safeZoneY; w=safeZoneW; h=safeZoneH;
			idc = 1200;
			text = "\OPTRE_Suit_Scripts\textures\MarkVB_Hud_No_Crosshair.paa";
		};
	};

	class MARKVI_HUD {
		idd = -1;
		moVIingEnable = 0;
		duration = 10000;
		fadein = 0;
		fadeout = 0;	
		name = "MARKVI_HUD";
		controls[] = {"Picture"};
		class Picture: RscPicture
		{
			x=safeZoneX; y=safeZoneY; w=safeZoneW; h=safeZoneH;
			idc = 1200;
			text = "\OPTRE_Suit_Scripts\textures\MarkVI_Hud_No_Crosshair.paa";
		};
	};

	class MP_HUD {
		idd = -1;
		movingEnable = 0;
		duration = 10000;
		fadein = 0;
		fadeout = 0;	
		name = "MP_HUD";
		controls[] = {"Picture"};
		class Picture: RscPicture
		{
			x=safeZoneX; y=safeZoneY; w=safeZoneW; h=safeZoneH;
			idc = 1200;
			text = "\OPTRE_Suit_Scripts\textures\MP_Hud_No_Crosshair.paa";
		};
	};

	
	class RECON_HUD {
		idd = -1;
		movingEnable = 0;
		duration = 10000;
		fadein = 0;
		fadeout = 0;	
		name = "RECON_HUD";
		controls[] = {"Picture"};
		class Picture: RscPicture
		{
			x=safeZoneX; y=safeZoneY; w=safeZoneW; h=safeZoneH;
			idc = 1200;
			text = "\OPTRE_Suit_Scripts\textures\RECON_Hud_No_Crosshair.paa";
		};
	};

	class SANGHEILI_HUD {
		idd = -1;
		movingEnable = 0;
		duration = 10000;
		fadein = 0;
		fadeout = 0;	
		name = "RECON_HUD";
		controls[] = {"Picture"};
		class Picture: RscPicture
		{
			x=safeZoneX; y=safeZoneY; w=safeZoneW; h=safeZoneH;
			idc = 1200;
			text = "\OPTRE_Suit_Scripts\textures\Sangheili_Hud_No_Crosshair.paa";
		};
	};

};

class CfgSounds
{
	class shield_bootup
	{
		name = "shield_bootup";
		sound[] = {"\OPTRE_Suit_Scripts\sounds\shield_start.ogg", 1, 1};
		titles[] = {};
	};
	class shield_recharge
	{
		name = "shield_recharge";
		sound[] = {"\OPTRE_Suit_Scripts\sounds\shield.ogg", 1, 1};
		titles[] = {};
	};
};