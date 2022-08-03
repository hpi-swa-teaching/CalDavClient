CalendarMorph
textOfDayName: aString 

	^ TextMorph new 
			contentsWrapped: aString translated first asString;
			textColor: self labelsDefaultColor;
			autoFit: false;
			width: 30;
			centered;
			lock