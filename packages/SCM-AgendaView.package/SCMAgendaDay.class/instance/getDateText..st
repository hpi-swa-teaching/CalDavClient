initialization
getDateText: aDate

	^ TextMorph new
			string: aDate dayOfMonth asString, '.' , Character cr, aDate monthAbbreviation asString
				fontName: self defaultFont size: self defaultTextSize;
			centered;
			textColor: Color gray;
			readOnly: true;
			yourself