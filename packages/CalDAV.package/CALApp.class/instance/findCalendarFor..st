event management
findCalendarFor: anEvent
	
	^ self calendars detect: [ :each | each events includes: anEvent] ifNone: [self error: 'No calendar with this event present']