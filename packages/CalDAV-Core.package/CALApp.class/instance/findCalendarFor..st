event management
findCalendarFor: anEvent
	
	self calendars do: [ :each | (each events includes: anEvent) ifTrue: [^ each]]