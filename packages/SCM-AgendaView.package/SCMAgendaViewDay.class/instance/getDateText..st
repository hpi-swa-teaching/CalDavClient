initialization
getDateText: aDate

	^ TextMorph new
			string:
				aDate asDateAndTime dayOfWeekAbbreviation, ',',
					Character cr, aDate dayOfMonth asString, '. ',  aDate monthAbbreviation asString
						fontName: self defaultFont size: self defaultTextSize;
			centered;
			textColor: Color gray;
			readOnly: true;
			yourself