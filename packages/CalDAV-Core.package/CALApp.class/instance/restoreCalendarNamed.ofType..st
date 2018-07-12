calendar management
restoreCalendarNamed: aFileName ofType: aClass

	self addCalendar: (aClass withName: aFileName).
	(self calendars detect: [ :each | each name = aFileName ] ifNone: [self error: 'should contain calendar with aFileName']) restore.
	self changed: #calenderNames.
	self changed: #eventNames
	
	