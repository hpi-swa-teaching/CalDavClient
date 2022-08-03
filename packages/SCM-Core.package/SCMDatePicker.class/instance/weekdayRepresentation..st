building
weekdayRepresentation: aString 

	^ TextMorph new 
			contentsWrapped: aString first;
			textColor: self labelsDefaultColor;
			autoFit: false;
			width: 30;
			centered;
			lock;
			yourself