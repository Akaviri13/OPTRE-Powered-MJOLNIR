if (isClass(configFile >> "CfgPatches" >> "OPTRE_Suit_Scripts_DEV")) exitWith {};
optre_suit_fnc_armor =
{
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
	If ( (vest player in optre_powered_suits) && (player getVariable "optre_suit_energy" != 0) && (player getVariable "active_mode" == "armor")) then
	{
		
		
		while {player getVariable "optre_suit_energy" >= 0 && (vest player in optre_powered_suits) && (player getVariable "active_mode" == "armor")} do {
		
			if (((getpos player select 2)>0.6) && (vehicle player isEqualTo player) && (player getVariable "active_mode" == "armor") && !(player getVariable "optre_preventfalldamage")) then {
				player setVariable ["optre_preventfalldamage",true];
				//hint format ["armor preventfalldamage %1" , player getVariable "optre_preventfalldamage"];
			};

			if (((getpos player select 2)<0.6) && ((velocity player select 2) == 0) && (player getVariable "active_mode" == "armor") && (player getVariable "optre_preventfalldamage")) then {
				player setVariable ["optre_preventfalldamage",false];
				//hint format ["armor preventfalldamage %1" , player getVariable "optre_preventfalldamage"];
				if (missionnamespace getvariable "OPTRE_MJOLNIR_CAMSHAKE") then {
					addCamShake [20, 1, 5];
				};
				playsound3d [_landingsound, player, false, getPosASL player, 3, 1, 50]
			};
			
			player allowDamage false;
			sleep 0.01;
		
		};
		player allowDamage true;
	
	};
	
};