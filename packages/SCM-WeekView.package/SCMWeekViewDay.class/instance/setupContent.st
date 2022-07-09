as yet unclassified
setupContent

	| text |
	
	text := TextMorph new
			string:
				self date asDateAndTime dayOfWeekAbbreviation, ',',
					Character cr, self date dayOfMonth asString, '. ',  self date monthAbbreviation asString
						fontName: 'Arial' size: 20;
			centered;
			extent: 65@30;
			textColor: Color gray;
			readOnly: true;
			yourself.

	self addMorph: text.
	self addTimeGrid