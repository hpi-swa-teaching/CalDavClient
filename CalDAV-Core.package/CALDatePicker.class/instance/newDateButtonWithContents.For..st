CalendarMorph
newDateButtonWithContents: aByteString For: aDate 

	^ SimpleButtonMorph new
		label: aByteString;
		cornerStyle: #square;
		color: self color muchLighter;
		borderColor: #raised;
		borderWidth: 2;
		width: 30; 
		actionSelector: #date:;
		target: self; 
		arguments: {aDate}; 
		yourself 