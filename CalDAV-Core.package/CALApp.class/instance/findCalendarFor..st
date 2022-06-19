event management
findCalendarFor: aCALEvent
	
	^ self calendars 
		detect: [:each | each events includes: aCALEvent] 
		ifNone: [self error: 'No calendar with this event present']