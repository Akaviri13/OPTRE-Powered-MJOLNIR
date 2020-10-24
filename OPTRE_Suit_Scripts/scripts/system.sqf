if (isClass(configFile >> "CfgPatches" >> "OPTRE_Suit_Scripts_DEV")) exitWith {};
optre_suit_fnc_system =
{	
	(_this select 0) params ["_target"];
	_HelmetVisionModeChanged = false;
	_lastvisionmode = currentVisionMode player;
	_visionmodechanged = false;
	if (missionnamespace getvariable "ace_advanced_fatigue_enabled") then {
		oldPerformanceFactor = ace_advanced_fatigue_performanceFactor;
		oldRecoveryFactor = ace_advanced_fatigue_recoveryFactor;
	};
	while {alive player && (vest player in optre_powered_suits) && !(player getVariable "optre_disable_suit")} do {
		if ((vest player in optre_powered_suits) && (player getvariable "optre_suit_active")) then {
			
			_currentenergy = player getVariable "optre_suit_energy";
			
			if ((((player getVariable "optre_suit_energy" == 0) or (player getVariable "optre_suit_energy" < 0) ) && (vest player in optre_powered_suits))) then {
				
				_depletedplayer = player;
				player setVariable ["optre_suit_energy", 0];
				_currentenergy = player getVariable "optre_suit_energy";
				player setVariable ["active_mode","none"];
				call optre_suit_fnc_none;
				playsound "shield_recharge";
				//hint 'Energy depleted';
				
				[_target, {
					params ["_target"];
					if (missionnamespace getvariable "OPTRE_MJOLNIR_ENABLE_SPARKS_SHIELD") then {
						private _depletedsparks = "#particlesource" createVehicle getpos _target;  
						_depletedsparks attachto [_target, [0, 0, 0], "Spine3"];
						_depletedsparks setParticleRandom [0, [0.25, 0.25, 0], [0.175, 0.175, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
						_depletedsparks setParticleParams [
			
							["\A3\data_f\blesk1",
							1, 
							0, 
							1], 
							"", 
							"SpaceObject", 
							1, 
							0.2, 
							[0, 0, 0], 
							[0, 0, 0], 
							0, 
							10,
							7.9, 
							0.005, 
							[0.01, 0.01, 0.01], 
							[[0.01, 0.01, 0.01, 1], 
							[0.9, 0.8, 0.1, 1], 
							[0.5, 0.5, 0.5, 0]], 
							[0.08], 
							1, 
							0, 
							"", 
							"", 
							_depletedsparks
							];
						_depletedsparks setDropInterval 0.1;
						sleep 4;
					
						_depletedsparks setDropInterval 0.2;
						sleep 4;
						
						deleteVehicle _depletedsparks;
					};
				}] remoteExec ["BIS_fnc_call"];
				if (missionnamespace getvariable "ace_advanced_fatigue_enabled") then {
					ace_advanced_fatigue_performanceFactor = oldPerformanceFactor;
					ace_advanced_fatigue_recoveryFactor = oldRecoveryFactor;
				};
				if (!(missionnamespace getvariable "ace_advanced_fatigue_enabled")) then {
					player enableFatigue true;
				};
				if (player getvariable "optre_speed_increased") then {
					[_target, {
						params ["_target","_speed"];
						_target setanimspeedcoef 1;
					}] remoteExec ["BIS_fnc_call"];
					player setvariable ["optre_speed_increased", false];
				};
				sleep 4;

				sleep 4;

				player setVariable ["optre_suit_energy", _currentenergy + 1];
				player setVariable ["optre_beingshotat", false];
				player setVariable ["active_mode","armor"];
				[] spawn {call optre_suit_fnc_armor;};
				if (!(missionnamespace getvariable "ace_advanced_fatigue_enabled")) then {
					player enableFatigue false;
				};
	
			};
			
			if (missionnamespace getvariable "OPTRE_MJOLNIR_SUPPRESS_RECOIL") then {
				player setUnitRecoilCoefficient  OPTRE_MJOLNIR_RECOIL_MODIFIER;
				player setCustomAimCoef OPTRE_MJOLNIR_RECOIL_MODIFIER;
			};
			
			if (missionnamespace getvariable "OPTRE_MJOLNIR_INCREASED_SPEED") then {
				if (missionnamespace getvariable "ace_advanced_fatigue_enabled") then {
					ace_advanced_fatigue_performanceFactor = 500;
					ace_advanced_fatigue_recoveryFactor = 500;
				};
				if ((vest player in optre_powered_suits) && (speed player > 11)) then {
					[_target, {
						params ["_target","_speed"];
						_target setanimspeedcoef OPTRE_MJOLNIR_SPEED_MODIFIER;
					}] remoteExec ["BIS_fnc_call"];
					player setvariable ["optre_speed_increased", true];
				};
			};
			
			if (player getvariable "optre_speed_increased" && (speed player < 11)) then {
				[_target, {
					params ["_target","_speed"];
					_target setanimspeedcoef 1;
				}] remoteExec ["BIS_fnc_call"];
				player setvariable ["optre_speed_increased", false];
			};
			
			if (((player getVariable "optre_suit_energy" < OPTRE_MJOLNIR_SHIELD_ENERGY ) && (player getVariable "optre_suit_energy" != 0) && !(player getVariable "optre_suit_energy" < 0)) && (vest player in optre_powered_suits) && !(player getVariable "optre_stopcharging") && !(player getVariable "optre_suit_armor_lock_on")) then {
				
				player setVariable ["optre_suit_energy", _currentenergy + OPTRE_MJOLNIR_SHIELD_REGEN];				
			};
			
			if ((player getVariable "optre_beingshotat") && (vest player in optre_powered_suits)) then {
				
				[] spawn {
					[] call {
						_timer = 5;
						player setVariable ["optre_beingshotat", false];
						player setVariable ["optre_stopcharging", true];

							while {((_timer > 0) && !(player getVariable "optre_beingshotat") && (player getVariable "optre_suit_energy" > 0))} do {
									_timer = _timer - 1;
									sleep 1;
							};
					};
					player setVariable ["optre_stopcharging", false];
				};
			};

			if (headgear player in optre_powered_suits_helmets && missionnamespace getvariable "OPTRE_MJOLNIR_ENERGY_BAR_ACTIVE") then {
				
				[] spawn
					{	
						_currentenergy = player getVariable "optre_suit_energy";
						disableSerialization;
						switch (OPTRE_MJOLNIR_ENERGY_BAR_COLOR) do {
							case 0: {
								switch (OPTRE_MJOLNIR_ENERGY_BAR_SIZE) do {
									case 0: {"OPTRE_PM_SHIELD_BAR" cutRsc ["OPTRE_SHIELD_BAR_VERY_SMALL","PLAIN",-1,false];};
									case 1: {"OPTRE_PM_SHIELD_BAR" cutRsc ["OPTRE_SHIELD_BAR_SMALL","PLAIN",-1,false];};
									case 2: {"OPTRE_PM_SHIELD_BAR" cutRsc ["OPTRE_SHIELD_BAR_NORMAL","PLAIN",-1,false];};
									case 3: {"OPTRE_PM_SHIELD_BAR" cutRsc ["OPTRE_SHIELD_BAR_LARGE","PLAIN",-1,false];};
									case 4: {"OPTRE_PM_SHIELD_BAR" cutRsc ["OPTRE_SHIELD_BAR_VERY_LARGE","PLAIN",-1,false];};
									default {"OPTRE_PM_SHIELD_BAR" cutRsc ["OPTRE_SHIELD_BAR","PLAIN",-1,false];};
								};
							};
							case 1: {
								switch (OPTRE_MJOLNIR_ENERGY_BAR_SIZE) do {
									case 0: {"OPTRE_PM_SHIELD_BAR" cutRsc ["OPTRE_SHIELD_BAR_COVENANT_VERY_SMALL","PLAIN",-1,false];};
									case 1: {"OPTRE_PM_SHIELD_BAR" cutRsc ["OPTRE_SHIELD_BAR_COVENANT_SMALL","PLAIN",-1,false];};
									case 2: {"OPTRE_PM_SHIELD_BAR" cutRsc ["OPTRE_SHIELD_BAR_COVENANT_NORMAL","PLAIN",-1,false];};
									case 3: {"OPTRE_PM_SHIELD_BAR" cutRsc ["OPTRE_SHIELD_BAR_COVENANT_LARGE","PLAIN",-1,false];};
									case 4: {"OPTRE_PM_SHIELD_BAR" cutRsc ["OPTRE_SHIELD_BAR_COVENANT_VERY_LARGE","PLAIN",-1,false];};
									default {"OPTRE_PM_SHIELD_BAR" cutRsc ["OPTRE_SHIELD_BAR_COVENANT","PLAIN",-1,false];};
								};
							};
							default {
								switch (OPTRE_MJOLNIR_ENERGY_BAR_SIZE) do {
									case 0: {"OPTRE_PM_SHIELD_BAR" cutRsc ["OPTRE_SHIELD_BAR_VERY_SMALL","PLAIN",-1,false];};
									case 1: {"OPTRE_PM_SHIELD_BAR" cutRsc ["OPTRE_SHIELD_BAR_SMALL","PLAIN",-1,false];};
									case 2: {"OPTRE_PM_SHIELD_BAR" cutRsc ["OPTRE_SHIELD_BAR_NORMAL","PLAIN",-1,false];};
									case 3: {"OPTRE_PM_SHIELD_BAR" cutRsc ["OPTRE_SHIELD_BAR_LARGE","PLAIN",-1,false];};
									case 4: {"OPTRE_PM_SHIELD_BAR" cutRsc ["OPTRE_SHIELD_BAR_VERY_LARGE","PLAIN",-1,false];};
									default {"OPTRE_PM_SHIELD_BAR" cutRsc ["OPTRE_SHIELD_BAR","PLAIN",-1,false];};
								};
							};
						};
						_display = uiNamespace getVariable "OPTRE_TAG_SHIELD";
						_setProgress = _display displayCtrl -1;
						_setProgress progressSetPosition (_currentenergy/OPTRE_MJOLNIR_SHIELD_ENERGY)
					};
				
			};
		};
		if (headgear player in optre_powered_suits_helmets && (player getvariable "OPTRE_MJOLNIR_HUD_ACTIVE")) then {
			if (_HelmetVisionModeChanged) then {
				_HelmetVisionModeChanged = false;
			};

			_visionmodechanged = !((currentVisionMode player) isEqualTo _lastvisionmode);
			_HelmetVisionModeChanged = _visionModeChanged && (vehicle player == player);
				
			if (_HelmetVisionModeChanged) then {
				if (_lastvisionmode != 2) then {
					playSound "RscDisplayCurator_visionMode";
				};
				_lastvisionmode = (currentVisionMode player);
			};
		};
		
		//HUD OVERLAY
		
		if (headgear player in optre_powered_suits_helmets && (!(player getvariable "OPTRE_MJOLNIR_HUD_ACTIVE")) && missionnamespace getvariable "OPTRE_MJOLNIR_HUD_OVERLAY") then {
			player setvariable ["OPTRE_MJOLNIR_HUD_ACTIVE", true];

			if (headgear player in optre_mjolnir_helmet_hud_EVA) then {"OPTRE_PM_HUD_OVERLAY" cutRsc ["EVA_HUD","PLAIN", 1, false];};
			if (headgear player in optre_mjolnir_helmet_hud_MarkIV) then {"OPTRE_PM_HUD_OVERLAY" cutRsc ["MARKIV_HUD","PLAIN", 1, false];};
			if (headgear player in optre_mjolnir_helmet_hud_MarkV) then {"OPTRE_PM_HUD_OVERLAY" cutRsc ["MARKV_HUD","PLAIN", 1, false];};
			if (headgear player in optre_mjolnir_helmet_hud_MarkVB) then {"OPTRE_PM_HUD_OVERLAY" cutRsc ["MARKVB_HUD","PLAIN", 1, false];};
			if (headgear player in optre_mjolnir_helmet_hud_MarkVI) then {"OPTRE_PM_HUD_OVERLAY" cutRsc ["MARKVI_HUD","PLAIN", 1, false];};
			if (headgear player in optre_mjolnir_helmet_hud_MP) then {"OPTRE_PM_HUD_OVERLAY" cutRsc ["MP_HUD","PLAIN", 1, false];};
			if (headgear player in optre_mjolnir_helmet_hud_RECON) then {"OPTRE_PM_HUD_OVERLAY" cutRsc ["RECON_HUD","PLAIN", 1, false];};
			if (headgear player in optre_mjolnir_helmet_hud_Sangheili) then {"OPTRE_PM_HUD_OVERLAY" cutRsc ["SANGHEILI_HUD","PLAIN", 1, false];};
		};

		if ((!(headgear player in optre_powered_suits_helmets) && (player getvariable "OPTRE_MJOLNIR_HUD_ACTIVE")) OR (!(missionnamespace getvariable "OPTRE_MJOLNIR_HUD_OVERLAY") && (player getvariable "OPTRE_MJOLNIR_HUD_ACTIVE")) OR ((headgear player in optre_powered_suits_helmets) && (player getvariable "OPTRE_MJOLNIR_HUD_ACTIVE") && ((cameraView == "EXTERNAL") OR (cameraView == "GROUP")))) then {
			player setvariable ["OPTRE_MJOLNIR_HUD_ACTIVE", false];
			"OPTRE_PM_HUD_OVERLAY" cutText ["","PLAIN", 1, false];
		};
		sleep 0.1;
	};	
	player setVariable ["optre_suit_active",false];
	player setVariable ["active_mode", "none"];
	//player setVariable ["optre_disable_suit",false];
	player setVariable ["optre_suit_energy", 0];
	player setUnitRecoilCoefficient  1;
	player setCustomAimCoef 1;
	
	player setvariable ["OPTRE_MJOLNIR_HUD_ACTIVE", false];
	"OPTRE_PM_HUD_OVERLAY" cutText ["","PLAIN", 1, false];
	if (missionnamespace getvariable "ace_advanced_fatigue_enabled") then {
		ace_advanced_fatigue_performanceFactor = oldPerformanceFactor;
		ace_advanced_fatigue_recoveryFactor = oldRecoveryFactor;
	};
	if (!(missionnamespace getvariable "ace_advanced_fatigue_enabled")) then {
		player enableFatigue true;
	};
	if (player getvariable "optre_speed_increased") then {
		[_target, {
			params ["_target","_speed"];
			_target setanimspeedcoef 1;
		}] remoteExec ["BIS_fnc_call"];
		player setvariable ["optre_speed_increased", false];
	};
};