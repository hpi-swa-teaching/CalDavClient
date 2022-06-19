initialization
getDateText: aDate

	^ TextMorph new
			string: aDate dayOfMonth asString, '.' , Character cr, aDate monthAbbreviation asString fontName: 'Arial' size: 20;
			centered;
			textColor: Color gray;
			readOnly: true;
			yourself