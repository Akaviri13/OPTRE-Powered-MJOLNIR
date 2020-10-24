if (isClass(configFile >> "CfgPatches" >> "OPTRE_Suit_Scripts_DEV")) exitWith {};
optre_suit_fnc_jump =
{
	if ((missionnamespace getVariable "OPTRE_MJOLNIR_ENABLE_JUMP") && (vehicle player isEqualTo player) && (uniform player in optre_jump_enabled_suits) && ((getpos player select 2)<0.1) && !((getpos player select 2)<-0.5) && !(stance player == "PRONE")) exitwith {
		
		_jumpingsound = selectRandom[
		"A3\Sounds_F\characters\footsteps\concrete\concrete_run_lpf_1.wss",
		"A3\Sounds_F\characters\footsteps\concrete\concrete_run_lpf_2.wss",
		"A3\Sounds_F\characters\footsteps\concrete\concrete_run_lpf_3.wss",
		"A3\Sounds_F\characters\footsteps\concrete\concrete_run_lpf_4.wss",
		"A3\Sounds_F\characters\footsteps\concrete\concrete_run_lpf_5.wss",
		"A3\Sounds_F\characters\footsteps\concrete\concrete_run_lpf_6.wss",
		"A3\Sounds_F\characters\footsteps\concrete\concrete_run_lpf_7.wss",
		"A3\Sounds_F\characters\footsteps\concrete\concrete_run_lpf_8.wss"
		];
		
		if (((getCameraViewDirection player) select 2) > 0) then {
			_cameraview = ((getCameraViewDirection player) select 2);

			_vel = velocity player;
			_dir = direction player;
			_speed = OPTRE_MJOLNIR_JUMP_FORWARD;
				
			_vel1 = (_vel select 0) + (sin _dir * _speed);
			_vel2 = (_vel select 1) + (cos _dir * _speed);
			_vel3 = (_vel select 2) + (OPTRE_MJOLNIR_JUMP_UP_HIGH * (2.1 + _cameraview));
				
			//hint format ["%1 | %2 | %3", _vel1, _vel2, _vel3];
				
			player setVelocity [
				_vel1, 
				_vel2, 
				_vel3
			];
			if (missionnamespace getvariable "OPTRE_MJOLNIR_CAMSHAKE") then {
				addCamShake [20, 1, 5];
			};
			playsound3d [_jumpingsound, player, false, getPosASL player, 1, 1, 50];
			//player playAction "PlayerStand";
		} else {
				
			_vel = velocity player;
			_dir = direction player;
			_speed = OPTRE_MJOLNIR_JUMP_FORWARD;
				
			_vel1 = (_vel select 0) + ((sin _dir * _speed) / 2);
			_vel2 = (_vel select 1) + ((cos _dir * _speed) / 2);
			_vel3 = (_vel select 2) + OPTRE_MJOLNIR_JUMP_UP_LOW;
			
			//hint format ["%1 | %2 | %3", _vel1, _vel2, _vel3];
			
			player setVelocity [
				_vel1, 
				_vel2, 
				_vel3
			];
			if (missionnamespace getvariable "OPTRE_MJOLNIR_CAMSHAKE") then {
				addCamShake [20, 1, 5];
			};
			playsound3d [_jumpingsound, player, false, getPosASL player, 1, 1, 50];
			//player playAction "PlayerStand";
		};
	};
};

	
	