CalendarMorph
newButtonWithContents: aByteString 

	^ SimpleButtonMorph new 
		label: aByteString;
		color: (self color mixed: 0.5 with: Color gray);
		borderColor: #raised;
		borderWidth: 2