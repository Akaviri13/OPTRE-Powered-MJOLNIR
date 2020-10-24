if (isClass(configFile >> "CfgPatches" >> "OPTRE_Suit_Scripts_DEV")) exitWith {};
OPTRE_fnc_restDamage = {

	if (isClass(configFile >> "CfgPatches" >> "ace_medical")) then {
		_head = ["head","face","neck"];
		_body = ["spine1","spine2","spine3"];
		_leftArm = ["leftarm","leftforearm","lefthand"];
		_rightArm = ["rightarm","rightforearm","righthand"];
		_leftLeg = ["leftupleg","leftleg","leftfoot"];
		_rightLeg = ["rightupleg","rightleg","rightfoot"];
		
		if (count _selection == 0) then {
			newSelection = selectRandom ["Head","Body","LeftArm","RightArm","LeftArm","RightArm"];
		};
		if (_hitbodypart in _head) then {
			newSelection = "Head";
		};
		if (_hitbodypart in _body) then {
			newSelection = "Body";
		};
		if (_hitbodypart in _leftArm) then {
			newSelection = "LeftArm";
		};
		if (_hitbodypart in _rightArm) then {
			newSelection = "RightArm";
		};
		if (_hitbodypart in _leftLeg) then {
			newSelection = "LeftArm";
		};
		if (_hitbodypart in _rightLeg) then {
			newSelection = "RightArm";
		};
		
		if (_restDamage > 50) then {

			[_target, (_restDamage/50), newSelection, "explosion"] call ace_medical_fnc_addDamageToUnit;

			_randomSelection = ["Head","Body","LeftArm","RightArm","LeftArm","RightArm"];
			for "_i" from 0 to 5 do {
				if (selectRandom [true, false]) then {
					[_target, (_restDamage/50), selectRandom _randomSelection, "explosion"] call ace_medical_fnc_addDamageToUnit;
				};
			};
		} else {
			[_target, (_restDamage/25), newSelection, "bullet"] call ace_medical_fnc_addDamageToUnit;
		};

	} else {
		_head = ["head","face","neck"];
		_body = ["spine1","spine2","spine3"];
		_leftArm = ["leftarm","leftforearm","lefthand"];
		_rightArm = ["rightarm","rightforearm","righthand"];
		_leftLeg = ["leftupleg","leftleg","leftfoot"];
		_rightLeg = ["rightupleg","rightleg","rightfoot"];

		if (count _selection == 0) then {
			newSelection = selectRandom ["hithead","hitbody","hitleftarm","hitrightarm","hitleftleg","hitrightleg"];
		};
		
		if (_hitbodypart in _head) then {
			newSelection = "hithead";
		};
		if (_hitbodypart in _body) then {
			newSelection = "hitbody";
		};
		if (_hitbodypart in _leftArm) then {
			newSelection = "hitleftarm";
		};
		if (_hitbodypart in _rightArm) then {
			newSelection = "hitrightarm";
		};
		if (_hitbodypart in _leftLeg) then {
			newSelection = "hitleftleg";
		};
		if (_hitbodypart in _rightLeg) then {
			newSelection = "hitrightleg";
		};

		if (_restDamage > 50) then {
			[_target,_restDamage] spawn {
				[_this] call {
					(_this select 0) params ["_target","_restDamage"];
					sleep 0.05;
					_hitPointDamage = _target getHitPointDamage newSelection;
					_target setHitPointDamage [newSelection, _hitPointDamage + _restDamage/500];
					_randomSelection = selectRandom ["hithead","hitbody","hitleftarm","hitrightarm","hitleftleg","hitrightleg"];
					for "_i" from 0 to 5 do {
						if (selectRandom [true, false]) then {
							_hitPointDamage = _target getHitPointDamage _randomSelection;
							_target setHitPointDamage [_randomSelection, _hitPointDamage + _restDamage/500];
						};
					};
				};
			};
		} else {

			[_target,_restDamage] spawn {
				[_this] call {
					(_this select 0) params ["_target","_restDamage"];
					sleep 0.05;
					_hitPointDamage = _target getHitPointDamage newSelection;
					_target setHitPointDamage [newSelection, _hitPointDamage + _restDamage/25];
				};
			};
		};
	};
};	
	