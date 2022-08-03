testing
testSaveNewEvent

	self addDialog
		load: self demoTomorrowEvent.
	self addDialog saveEvent.
	
	self assert: (self demoCalendar events includes: self demoEvent).
	self assert: (self demoCalendar events includes: self demoTomorrowEvent)
	