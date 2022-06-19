initialization
createTextField: aString

	| textField |
	textField :=  PluggableTextMorphPlus new
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		wantsFrameAdornments: false;
		balloonText: aString;
		setText: '';
		yourself.
		
	^ textField