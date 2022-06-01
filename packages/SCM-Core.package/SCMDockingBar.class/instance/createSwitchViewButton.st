initialization
createSwitchViewButton

	| button |
	
	button := SimpleButtonMorph new
		label: 'Switch View';
		actWhen: #buttonUp;
		target: self app;
		actionSelector: 'switchView'.
		
		self widgets at: #switchView put: button.
		self addMorphBack: button.