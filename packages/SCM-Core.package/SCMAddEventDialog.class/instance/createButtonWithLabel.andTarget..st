part creation
createButtonWithLabel: aTitle andTarget: aTarget

	| buttonBox button |
	
	buttonBox := Morph new
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		listCentering: #center;
		wrapCentering: #center;
		hResizing: #spaceFill;
		color: Color lightGray
		yourself.
		
	button := SimpleButtonMorph new
		label: aTitle;
		target: aTarget;
		actionSelector: #closeBoxHit.  "like abandon but this is what the little red x in systems windows do..."
	
	buttonBox addMorph: button.
	
	^ buttonBox