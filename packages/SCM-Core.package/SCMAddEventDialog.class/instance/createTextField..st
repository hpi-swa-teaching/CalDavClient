initialization
createTextField: aString
		
	^ PluggableTextMorphPlus new
			vResizing: #spaceFill;
			hResizing: #spaceFill;
			wantsFrameAdornments: false;
			balloonText: aString;
			setText: '';
			yourself