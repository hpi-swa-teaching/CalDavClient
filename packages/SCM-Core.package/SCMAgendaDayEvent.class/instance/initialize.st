initialization
initialize

	super initialize.
	self
		vResizing: #spaceFill;
	 	hResizing: #spaceFill;
	  	backgroundColor: (Color r: 220 g: 220 b: 255 range: 255);
		string:  'Ich bin ein Termin!' fontName: 'arial' size: 20;
		readOnly: true.