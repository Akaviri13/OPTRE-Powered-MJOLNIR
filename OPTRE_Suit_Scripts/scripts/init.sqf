if (isClass(configFile >> "CfgPatches" >> "OPTRE_Suit_Scripts_DEV")) exitWith {};

//Mission Scripts

if (false) then {

	execVM "OPTRE_Suit_Scripts\scripts\settings.sqf";
	execVM "OPTRE_Suit_Scripts\scripts\jump.sqf";
	execVM "OPTRE_Suit_Scripts\scripts\none.sqf";
	execVM "OPTRE_Suit_Scripts\scripts\armor.sqf";
	//execVM "OPTRE_Suit_Scripts\scripts\abilities.sqf";
	execVM "OPTRE_Suit_Scripts\scripts\preventfalldamage.sqf";
	execVM "OPTRE_Suit_Scripts\scripts\restdamage.sqf";
	execVM "OPTRE_Suit_Scripts\scripts\system.sqf";
	execVM "OPTRE_Suit_Scripts\scripts\system_AI.sqf";
	execVM "OPTRE_Suit_Scripts\scripts\hudinittext.sqf";

};

//Addon Scripts

if (true) then {

	execVM "\OPTRE_Suit_Scripts\scripts\jump.sqf";
	execVM "\OPTRE_Suit_Scripts\scripts\none.sqf";
	execVM "\OPTRE_Suit_Scripts\scripts\armor.sqf";
	//execVM "\OPTRE_Suit_Scripts\scripts\abilities.sqf";
	execVM "\OPTRE_Suit_Scripts\scripts\preventfalldamage.sqf";
	execVM "\OPTRE_Suit_Scripts\scripts\restdamage.sqf";
	execVM "\OPTRE_Suit_Scripts\scripts\system.sqf";
	execVM "\OPTRE_Suit_Scripts\scripts\system_AI.sqf";
	execVM "\OPTRE_Suit_Scripts\scripts\hudinittext.sqf";

};

player setVariable ["optre_suit_active",false];

["OPTRE Powered MJOLNIR","optre_jump_test", "Jump", {[] spawn {call optre_suit_fnc_jump};}, "", [0x39, [false, true, false]]] call CBA_fnc_addKeybind;
//["OPTRE Powered MJOLNIR","optre_armor_ability", "Armor Ability", {[] spawn {call optre_suit_fnc_abilities};}, "", [0x10, [false, true, false]]] call CBA_fnc_addKeybind;	

//Applies scripts on AIs that get spawned after mission init
["CAManBase", "init", {
	(_this select 0) params ["_unit"];
	[_unit] spawn {
		[_this] call {
			(_this select 0) params ["_unit"];
			if (!(isplayer _unit) && (vest _unit in optre_powered_suits) && alive _unit && missionnamespace getvariable "OPTRE_MJOLNIR_ACTIVATE_AI" && local _unit) then {
				[_unit] call optre_suit_fnc_system_AI;
			};
		};
	};
}] call CBA_fnc_addClassEventHandler;

//Reapplys AI scripts when AI unit switches locality
["CAManBase", "Local", {
	(_this select 0) params ["_unit","_local"];
	[_unit] spawn {
		[_this] call {
			(_this select 0) params ["_unit","_local"];
			if (!(isplayer _unit) && (vest _unit in optre_powered_suits) && alive _unit && missionnamespace getvariable "OPTRE_MJOLNIR_ACTIVATE_AI" && local _unit) then {
				[_unit] call optre_suit_fnc_system_AI;
			};
		};
	};
}] call CBA_fnc_addClassEventHandler;

//Detects hits and deducts energy according to ammo type. Also spawns sparks.
["CAManBase", "HitPart", {
    (_this select 0) params ["_target", "_shooter", "_projectile", "_position", "_velocity", "_selection", "_ammo"];

	[_this, {
		(_this select 0) params ["_target", "_shooter", "_projectile", "_position", "_velocity", "_selection", "_ammo"];
		if ((_target getVariable "active_mode" == "armor") && (_target getVariable "optre_suit_energy" >= 0) && (alive _target)) then {
			[_this, {
				(_this select 0) params ["_target"];
				[_target] spawn {
					[_this] call {
						(_this select 0) params ["_target"];
						if (missionnamespace getvariable "OPTRE_MJOLNIR_ENABLE_SPARKS_HIT") then {
							_hitsparks = "#particlesource" createVehicle getpos _target;  
							_hitsparks attachto [_target, [0, 0, 0], "Spine3"];
							_hitsparks setParticleRandom [0, [0.25, 0.25, 0], [0.175, 0.175, 0], 0, 0.25, [0.9, 0.8, 0.1, 1], 0, 0];
							_hitsparks setParticleParams [["\A3\data_f\blesk1",1, 0, 1], "", "SpaceObject", 1, 0.2, [0, 0, 0], [0, 0, 0], 0, 10,7.9, 0.005, [0.01, 0.01, 0.01], [[0.91, 0.01, 0.01, 1], [0.9, 0.8, 0.1, 1], [0.9, 0.8, 0.1, 1]], [0.08], 1, 0, "", "", _hitsparks];
							_hitsparks setDropInterval 0.1;
							sleep 0.01;
							deleteVehicle _hitsparks;
						};
					};
				};
			}] remoteExec ["BIS_fnc_call"];
			
			_energyloss = (_ammo select 0);
			_hitbodypart = (_selection select 0);
			_currentenergy = _target getVariable "optre_suit_energy";
			_target setVariable ["optre_beingshotat", true];
			_target setVariable ["optre_suit_energy", _currentenergy - _energyloss];
			
			if (_energyloss > _currentenergy) then {
				_restDamage = (_energyloss - _currentenergy);
				[_target,_hitbodypart,_selection,_restdamage] call OPTRE_fnc_restDamage;
			};
		};
	}] remoteExec ["call", _target];
	
}] call CBA_fnc_addClassEventHandler;

optre_suit_fnc_suit_ready =
{	
	player setVariable ["optre_beingshotat", false];
	player setVariable ["optre_stopcharging", false];
	player setVariable ["optre_suit_active",false];
	player setVariable ["optre_disable_suit", false];
	player setVariable ["optre_preventfalldamage",false];
	player setvariable ["active_mode", "none"];
	[] spawn {call optre_suit_fnc_preventfalldamage;};

	//Activate Suit action
	optre_suit_activate_action = player addAction ["Activate Suit", {
		(_this select 0) params ["_target"];
		if (missionnamespace getvariable "OPTRE_MJOLNIR_HUD_ACTIVE_INTRO") then {
				call optre_suit_fnc_hud_start;
			};
			[_this] call optre_suit_fnc_suit_activation
		}, [], 6, false, true,"","(alive _originalTarget) && (vest player in optre_powered_suits) && !(player getVariable 'optre_suit_active') && (missionnamespace getVariable 'OPTRE_MJOLNIR_SHOW_ACTIVATE')"
	];
	
	//Deactivate Suit action.
	optre_suit_deactivate_action = player addAction ["Deactivate Suit", {
			(_this select 0) params ["_target"];
			_target setVariable ["optre_disable_suit", true];
			playSound "Simulation_Fatal";
		}, [], 6, false, true,"","(alive _originalTarget) && (vest player in optre_powered_suits) && (player getVariable 'optre_suit_active') && !(player getVariable 'optre_disable_suit') && (missionnamespace getVariable 'OPTRE_MJOLNIR_SHOW_ACTIVATE') && (missionnamespace getVariable 'OPTRE_MJOLNIR_SHOW_DEACTIVATE')"
	];
	
};

optre_suit_fnc_suit_activation = 
{	
	(_this select 0) params ["_target"];
	player setVariable ["optre_suit_active",true];
	player setVariable ["optre_disable_suit", false];
	player setVariable ["optre_suit_energy", OPTRE_MJOLNIR_SHIELD_ENERGY];
	player setvariable ["optre_speed_increased", false];
	player setVariable ["optre_preventfalldamage",false];
	player setvariable ["OPTRE_MJOLNIR_HUD_ACTIVE", false];
	player setvariable ["optre_suit_armor_lock_on", false];
	
	player setvariable ["active_mode", "armor"];
	
	[] spawn {call optre_suit_fnc_armor;};
	
	player enableFatigue false;
	[_this] call optre_suit_fnc_system;
};

//Initiates the script on player units and loops a check for wether the scripts are running on the given player unit
if (hasInterface) then {
	[] spawn {
		[] call {
			waitUntil {
				sleep 1;
				(!(isNull player) && (time > 0))
			};
			call optre_suit_fnc_suit_ready;
			while {true} do {
				sleep 5;
				if (isNil {player getVariable 'optre_suit_active'}) then {
					call optre_suit_fnc_suit_ready;
				};
			};
		};
	};
};

//Apply scripts to all AI present on mission start
if (isServer OR !hasInterface) then {
	{
		[_x] spawn {
			[_this] call {
				sleep 1;
				(_this select 0) params ["_unit"];
				if (!(isplayer _unit) && (vest _unit in optre_powered_suits) && alive _unit && missionnamespace getvariable "OPTRE_MJOLNIR_ACTIVATE_AI" && local _unit) then {
					[_unit] call optre_suit_fnc_system_AI;
				};
			};
		};
	} foreach allUnits;
};

//Reapply scripts on respawn
player addEventHandler ["respawn", "call optre_suit_fnc_suit_ready"];

//Reapply scripts on TeamSwitch, untested in multiplayer
if (isServer && teamSwitchEnabled) then {
	addMissionEventHandler ["TeamSwitch", {
		
		_unit = (_this select 0);
		_unitNew = (_this select 1);
		_unit removeAction optre_suit_activate_action;
		_unit removeAction optre_suit_deactivate_action;

		(_this select 0) setVariable ["optre_disable_suit", true];
		(_this select 1) setVariable ["optre_disable_suit", true];

		//Applies AI scripts on previously controlled unit
		[_unit] spawn {
			[_this] call {
				(_this select 0) params ["_unit"];
				if (!(isplayer _unit) && (vest _unit in optre_powered_suits) && alive _unit && missionnamespace getvariable "OPTRE_MJOLNIR_ACTIVATE_AI" && local _unit) then {
					[_unit] call optre_suit_fnc_system_AI;
				};
			};
		};

		//Reapplies Activate Suit action to newly controlled unit.
		optre_suit_activate_action = _unitNew addAction ["Activate Suit", {
			(_this select 0) params ["_target"];
			if (missionnamespace getvariable "OPTRE_MJOLNIR_HUD_ACTIVE_INTRO") then {
					call optre_suit_fnc_hud_start;
				};
				[_this] call optre_suit_fnc_suit_activation
			}, [], 6, false, true,"","(alive _originalTarget) && (vest player in optre_powered_suits) && !(player getVariable 'optre_suit_active') && (missionnamespace getVariable 'OPTRE_MJOLNIR_SHOW_ACTIVATE')"
		];
		optre_suit_deactivate_action = player addAction ["Deactivate Suit", {
			(_this select 0) params ["_target"];
			_target setVariable ["optre_disable_suit", true];
			playSound "Simulation_Fatal";
		}, [], 6, false, true,"","(alive _originalTarget) && (vest player in optre_powered_suits) && (player getVariable 'optre_suit_active') && !(player getVariable 'optre_disable_suit') && (missionnamespace getVariable 'OPTRE_MJOLNIR_SHOW_ACTIVATE') && (missionnamespace getVariable 'OPTRE_MJOLNIR_SHOW_DEACTIVATE')"
		];
	}];
};