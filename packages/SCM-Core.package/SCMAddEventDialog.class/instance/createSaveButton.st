initialization
createSaveButton

	| buttonBox button |
	
	buttonBox := Morph new
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		listCentering: #center;
		wrapCentering: #center;
		hResizing: #spaceFill;
		color: Color transparent.
		
	button := SimpleButtonMorph new
		label: 'Done';
		target: self;
		color: (Color r: 168 g: 219 b: 255 range: 255);
		actionSelector: #saveEvent.  "like abandon but this is what the little red x in systems windows do..."
	
	buttonBox addMorph: button.
	
	^ buttonBox