convenience
getDateText: aDate

	^ TextMorph new
			string: (self createDateStringWith: aDate)
				fontName: self defaultFont size: self defaultTextSize;
			centered;
			extent: self defaultDateTextExtent;
			textColor: Color gray;
			readOnly: true;
			yourself