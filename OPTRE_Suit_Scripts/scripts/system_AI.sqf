if (isClass(configFile >> "CfgPatches" >> "OPTRE_Suit_Scripts_DEV")) exitWith {};
optre_suit_fnc_system_AI =
{	
	sleep 1;
	(_this select 0) params ["_unit"];
	//[format ['loop called for %1', _unit]] remoteexec ['systemchat'];
	_unit setVariable ["optre_beingshotat", false];
	_unit setVariable ["optre_stopcharging", false];
	_unit setVariable ["optre_suit_active",true];
	_unit setVariable ["optre_disable_suit", false];
	_unit setVariable ["optre_preventfalldamage",false];	
	_unit setvariable ["active_mode", "armor"];
	_unit setvariable ["optre_suit_armor_lock_on", false];
	_unit setVariable ["optre_suit_energy", OPTRE_MJOLNIR_SHIELD_ENERGY_AI];
	_unit allowDamage false;
	while {alive _unit && (vest _unit in optre_powered_suits) && missionnamespace getvariable "OPTRE_MJOLNIR_ACTIVATE_AI" && local _unit && !(_unit getVariable "optre_disable_suit")} do {
		if ((vest _unit in optre_powered_suits) && (_unit getvariable "optre_suit_active")) then {
			
			_currentenergy = _unit getVariable "optre_suit_energy";
			if ((((_unit getVariable "optre_suit_energy" == 0) or (_unit getVariable "optre_suit_energy" < 0) ) && (vest _unit in optre_powered_suits))) then {
				
				_unit setVariable ["optre_suit_energy", 0];
				_currentenergy = _unit getVariable "optre_suit_energy";
				_unit setVariable ["active_mode","none"];
				_unit allowDamage true;
				
				[_unit, {
					params ["_unit"];
					if (missionnamespace getvariable "OPTRE_MJOLNIR_ENABLE_SPARKS_SHIELD") then {
						private _depletedsparks = "#particlesource" createVehicle getpos _unit;  
						_depletedsparks attachto [_unit, [0, 0, 0], "Spine3"];
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
				sleep 4;

				sleep 4;

				_unit setVariable ["optre_suit_energy", _currentenergy + 1];
				_unit setVariable ["optre_beingshotat", false];
				_unit setVariable ["active_mode","armor"];	
				_unit allowDamage false;
			};
			
			if (((_unit getVariable "optre_suit_energy" < OPTRE_MJOLNIR_SHIELD_ENERGY_AI ) && (_unit getVariable "optre_suit_energy" != 0) && !(_unit getVariable "optre_suit_energy" < 0)) && (vest _unit in optre_powered_suits) && !(_unit getVariable "optre_stopcharging")) then {
				_unit setVariable ["optre_suit_energy", _currentenergy + OPTRE_MJOLNIR_SHIELD_REGEN_AI];				
			};
			
			if ((_unit getVariable "optre_beingshotat") && (vest _unit in optre_powered_suits)) then {
				
				[_unit] spawn {
					(_this select 0) params ["_unit"];
					[_unit] call {
						(_this select 0) params ["_unit"];
						_timer = 5;
						_unit setVariable ["optre_beingshotat", false];
						_unit setVariable ["optre_stopcharging", true];

						while {((_timer > 0) && !(_unit getVariable "optre_beingshotat") && (_unit getVariable "optre_suit_energy" > 0))} do {
								_timer = _timer - 1;
								sleep 1;
						};
					};
					_unit setVariable ["optre_stopcharging", false];
					
				};
			
			};
			
		};
		sleep 0.1;
	};	
	_unit setVariable ["optre_suit_active",false];
	_unit setVariable ["active_mode", "none"];
	_unit setVariable ["optre_disable_suit",false];
	_unit setVariable ["optre_suit_energy", 0];
	_unit allowDamage true;
	//[format ['loop stopped for %1', _unit]] remoteexec ['systemchat'];
	
};