CalendarMorph
newDateButtonWithContents: aByteString 
	^SimpleButtonMorph new
		label: aByteString;
		cornerStyle: #square;
		color: self color muchLighter;
		borderColor: #raised;
		borderWidth: 2;
		width: 30