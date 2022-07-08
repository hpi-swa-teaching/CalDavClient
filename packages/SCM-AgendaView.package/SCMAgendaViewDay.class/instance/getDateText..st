initialization
getDateText: aDate

	^ TextMorph new
			string:
				aDate asDateAndTime dayOfWeekAbbreviation, ',',
					Character cr, aDate dayOfMonth asString, '. ',  aDate monthAbbreviation asString
						fontName: self defaultFont size: self defaultTextSize;
			centered;
			extent: 65@30;
			textColor: Color gray;
			readOnly: true;
			yourself