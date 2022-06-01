initialization
createSwitchViewButton

	| button |
	
	button := SimpleButtonMorph new
		label: 'Switch View';
		actWhen: #buttonUp;
		color: (Color r: 168 g: 219 b: 255 range: 255);
		target: self app;
		actionSelector: 'switchView';
		yourself.
		
		self widgets at: #switchView put: button.
		self addMorphBack: button.