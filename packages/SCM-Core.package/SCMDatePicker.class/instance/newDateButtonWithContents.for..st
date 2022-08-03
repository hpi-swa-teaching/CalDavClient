building
newDateButtonWithContents: aString for: aDate 

	^ SimpleButtonMorph new
			label: aString;
			cornerStyle: #square;
			color: self color muchLighter;
			borderColor: #raised;
			borderWidth: 2;
			width: 30; 
			actionSelector: #selectDate:;
			target: self; 
			arguments: {aDate}; 
			yourself 