accessing
calendarIndex: aNumber
"there was an error for true before..."
	(aNumber <= self activeCalendars size and: [aNumber >= 1])
		ifTrue: [calendarIndex := aNumber. 
				self changed: #calendarIndex.
				self changed: #calendarNames.]