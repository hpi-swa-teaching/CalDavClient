as yet unclassified
createButtonWithLabel: aTitle andTarget: aTarget
	"comment stating purpose of message"

	| buttonBox button |
	
	buttonBox := Morph new
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		listCentering: #center;
		wrapCentering: #center;
		hResizing: #spaceFill;
		color: Color green.
		
	button := SimpleButtonMorph new
		label: aTitle;
		target: aTarget;
		actionSelector: #abandon.
	
	buttonBox addMorph: button.
	
	^buttonBox 







