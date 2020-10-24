if (isClass(configFile >> "CfgPatches" >> "OPTRE_Suit_Scripts_DEV")) exitWith {};
optre_suit_fnc_preventfalldamage =
{
	while {alive player} do {
		if (uniform player in optre_jump_enabled_suits) then {
			_landingsound = selectRandom[
				"A3\Sounds_F\characters\footsteps\concrete\concrete_run_hpf_1.wss",
				"A3\Sounds_F\characters\footsteps\concrete\concrete_run_hpf_2.wss",
				"A3\Sounds_F\characters\footsteps\concrete\concrete_run_hpf_3.wss",
				"A3\Sounds_F\characters\footsteps\concrete\concrete_run_hpf_4.wss",
				"A3\Sounds_F\characters\footsteps\concrete\concrete_run_hpf_5.wss",
				"A3\Sounds_F\characters\footsteps\concrete\concrete_run_hpf_6.wss",
				"A3\Sounds_F\characters\footsteps\concrete\concrete_run_hpf_7.wss",
				"A3\Sounds_F\characters\footsteps\concrete\concrete_run_hpf_8.wss"
			];
			while {alive player && uniform player in optre_jump_enabled_suits} do {
				if (((getpos player select 2)>0.6) && (vehicle player isEqualTo player) && (player getVariable "active_mode" != "armor") && !(player getVariable "optre_preventfalldamage") && missionnamespace getvariable "OPTRE_MJOLNIR_PREVENT_FALLDAMAGE") then {
					player setVariable ["optre_preventfalldamage",true];
					//hint format ["preventfalldamage %1" , player getVariable "optre_preventfalldamage"];
				};
						
				if (((getpos player select 2)<0.6) && (vehicle player isEqualTo player) && (player getVariable "active_mode" != "armor") && (player getVariable "optre_preventfalldamage")) then {
					player allowdamage false;
					//hint format ["preventfalldamage %1" , player getVariable "optre_preventfalldamage"];
				};
				
				if (((getpos player select 2)<0.6) && ((velocity player select 2) == 0) && (player getVariable "active_mode" != "armor") && (player getVariable "optre_preventfalldamage")) then {
					player allowdamage true;
					player setVariable ["optre_preventfalldamage",false];
					//hint format ["preventfalldamage %1" , player getVariable "optre_preventfalldamage"];
					if (missionnamespace getvariable "OPTRE_MJOLNIR_CAMSHAKE") then {
						addCamShake [20, 1, 5];
					};
					playsound3d [_landingsound, player, false, getPosASL player, 3, 1, 50]
				};
				sleep 0.01;
			};
		};
		sleep 5;
	};
};