initialization
initialize

	super initialize.
	self
		vResizing: #spaceFill;
	 	hResizing: #spaceFill;
	  	backgroundColor: (Color fromRgbTriplet: {0.9 . 0.9 . 0.9});
		string:  'Ich bin ein Termin!' fontName: 'arial' size: 20;
		readOnly: true.