accessing
calendarIndex: aNumber
"there was an error for true before..."
	(aNumber <= self editableCalendarsNames size and: [aNumber >= 1])
		ifTrue: [calendarIndex := aNumber. 
				self changed: #calendarIndex.]