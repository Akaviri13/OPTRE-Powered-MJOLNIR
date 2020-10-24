if (isClass(configFile >> "CfgPatches" >> "OPTRE_Suit_Scripts_DEV")) exitWith {};
optre_suit_fnc_hud_start = {
	
	hud_chrom = ppEffectCreate ["ChromAberration",2561];
	hud_chrom ppEffectForceInNVG true;
	hud_chrom ppEffectAdjust [0.01,0.01,true];
	hud_chrom ppEffectCommit 0.3;
	hud_chrom ppEffectEnable true;
	hud_wetD = ppEffectCreate ["WetDistortion",2562];
	hud_wetD ppEffectForceInNVG true;
	hud_wetD ppEffectAdjust [0,-0.015,0.015,0,100,0,100,0.3,0.1,0.76,0.64,2,2,0,0];
	hud_wetD ppEffectCommit 0.3;
	hud_wetD ppEffectEnable true;
	
	call BIS_fnc_VRFadeOut;
		sleep 1;
		playsound "shield_bootup";
		If (headgear player in optre_powered_suits_helmets) then {
		
		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;

		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initializing...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;

		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initializing...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing main power supply...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;

		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initializing...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing main power supply...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;

		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initializing...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing main power supply...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    starting actuators...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;

		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initializing...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing main power supply...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    starting actuators...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right leg actuators...   </t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;

		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initializing...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing main power supply...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    starting actuators...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right leg actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left leg actuators...    </t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;

		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initializing...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing main power supply...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    starting actuators...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right leg actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left leg actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        torso actuators...       </t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;

		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initializing...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing main power supply...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    starting actuators...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right leg actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left leg actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        torso actuators...       completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        neck actuators...        </t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;

		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initializing...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing main power supply...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    starting actuators...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right leg actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left leg actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        torso actuators...       completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        neck actuators...        completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right arm actuators...  </t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;

		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initializing...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing main power supply...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    starting actuators...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right leg actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left leg actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        torso actuators...       completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        neck actuators...        completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right arm actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left arm actuators...    </t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;

		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initializing...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing main power supply...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    starting actuators...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right leg actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left leg actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        torso actuators...       completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        neck actuators...        completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right arm actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left arm actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;

		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initializing...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing main power supply...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    starting actuators...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right leg actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left leg actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        torso actuators...       completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        neck actuators...        completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right arm actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left arm actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing suit/neural interface link</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;

		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initializing...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing main power supply...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    starting actuators...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right leg actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left leg actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        torso actuators...       completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        neck actuators...        completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right arm actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left arm actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing suit/neural interface link</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;

		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initializing...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing main power supply...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    starting actuators...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right leg actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left leg actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        torso actuators...       completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        neck actuators...        completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right arm actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left arm actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing suit/neural interface link</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>	   initializing tactical visor binoculars...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;

		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initializing...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing main power supply...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    starting actuators...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right leg actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left leg actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        torso actuators...       completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        neck actuators...        completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right arm actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left arm actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing suit/neural interface link</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>	   initializing tactical visor binoculars...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initialization failed binoculars unavailable</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;

		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initializing...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing main power supply...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    starting actuators...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right leg actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left leg actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        torso actuators...       completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        neck actuators...        completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right arm actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left arm actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing suit/neural interface link</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>	   initializing tactical visor binoculars...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initialization failed binoculars unavailable</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    powering Liquid metal crystal piezoelectric layer</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;

		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initializing...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing main power supply...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    starting actuators...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right leg actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left leg actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        torso actuators...       completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        neck actuators...        completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right arm actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left arm actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing suit/neural interface link</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>	   initializing tactical visor binoculars...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initialization failed binoculars unavailable</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    powering Liquid metal crystal piezoelectric layer</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        reactive circuits...     </t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;

		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initializing...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing main power supply...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    starting actuators...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right leg actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left leg actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        torso actuators...       completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        neck actuators...        completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right arm actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left arm actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing suit/neural interface link</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>	   initializing tactical visor binoculars...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initialization failed binoculars unavailable</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    powering Liquid metal crystal piezoelectric layer</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        reactive circuits...     ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        Biofoam injectors...     </t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;

		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initializing...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing main power supply...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    starting actuators...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right leg actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left leg actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        torso actuators...       completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        neck actuators...        completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right arm actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left arm actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing suit/neural interface link</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>	   initializing tactical visor binoculars...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initialization failed binoculars unavailable</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    powering Liquid metal crystal piezoelectric layer</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        reactive circuits...     ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        Biofoam injectors...     ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        Lockdown system...       </t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;

		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initializing...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing main power supply...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    starting actuators...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right leg actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left leg actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        torso actuators...       completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        neck actuators...        completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right arm actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left arm actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing suit/neural interface link</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>	   initializing tactical visor binoculars...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initialization failed binoculars unavailable</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    powering Liquid metal crystal piezoelectric layer</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        reactive circuits...     ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        Biofoam injectors...     ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        Lockdown system...       ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        Energy Shield...         </t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;

		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initializing...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing main power supply...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    starting actuators...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right leg actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left leg actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        torso actuators...       completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        neck actuators...        completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right arm actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left arm actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing suit/neural interface link</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>	   initializing tactical visor binoculars...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initialization failed binoculars unavailable</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    powering Liquid metal crystal piezoelectric layer</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        reactive circuits...     ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        Biofoam injectors...     ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        Lockdown system...       ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        Energy Shield...         ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;

		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initializing...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing main power supply...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    starting actuators...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right leg actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left leg actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        torso actuators...       completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        neck actuators...        completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right arm actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left arm actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing suit/neural interface link</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>	   initializing tactical visor binoculars...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initialization failed binoculars unavailable</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    powering Liquid metal crystal piezoelectric layer</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        reactive circuits...     ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        Biofoam injectors...     ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        Lockdown system...       ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        Energy Shield...         ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    loading MJOLNIR HUD v0.3</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;

		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initializing...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing main power supply...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    starting actuators...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right leg actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left leg actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        torso actuators...       completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        neck actuators...        completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right arm actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left arm actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing suit/neural interface link</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>	   initializing tactical visor binoculars...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initialization failed binoculars unavailable</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    powering Liquid metal crystal piezoelectric layer</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        reactive circuits...     ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        Biofoam injectors...     ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        Lockdown system...       ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        Energy Shield...         ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    loading MJOLNIR HUD v0.3</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    loading complete</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;

		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initializing...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing main power supply...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    starting actuators...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right leg actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left leg actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        torso actuators...       completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        neck actuators...        completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right arm actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left arm actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing suit/neural interface link</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>	   initializing tactical visor binoculars...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initialization failed binoculars unavailable</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    powering Liquid metal crystal piezoelectric layer</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        reactive circuits...     ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        Biofoam injectors...     ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        Lockdown system...       ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        Energy Shield...         ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    loading MJOLNIR HUD v0.3</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    loading complete</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initialization successful</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'></t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;

		titleText ["<t valign='top' t align='left' t color='#61BDFD' size='1'>C:\ORION>initialize MJOLNIR</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initializing...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing main power supply...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    starting actuators...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right leg actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left leg actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        torso actuators...       completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        neck actuators...        completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        right arm actuators...   completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        left arm actuators...    completed</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initializing suit/neural interface link</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>	   initializing tactical visor binoculars...</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    initialization failed binoculars unavailable</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    powering Liquid metal crystal piezoelectric layer</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        reactive circuits...     ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        Biofoam injectors...     ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        Lockdown system...       ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>        Energy Shield...         ready</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    success</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    loading MJOLNIR HUD v0.3</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>    loading complete</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>initialization successful</t><br/>
						<t valign='top' t align='left' t color='#61BDFD' size='1'>suit ready</t><br/>", "BLACK FADED", 0, true, true];
						
		sleep 0.1;
		
		
		};
		
	sleep 0.1;
	ppEffectDestroy [hud_chrom,hud_wetD];
	call BIS_fnc_VRFadeIn;
	
};