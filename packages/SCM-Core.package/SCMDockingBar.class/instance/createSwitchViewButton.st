initialization
createSwitchViewButton

	| button |
	
	button := SimpleButtonMorph new
		label: 'Switch View';
		actWhen: #buttonUp;
		target: self app;
		actionSelector: 'switchView'.
		
		^ button.