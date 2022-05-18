nil
createWithDate: aDate

	^ self new
			date: aDate;
			string: aDate dayOfMonth asString ,  '. ' , aDate monthAbbreviation asString fontName: 'Arial' size: 20 wrap: true;
			centered;
			textColor: Color gray;
			readOnly: true;
			yourself.