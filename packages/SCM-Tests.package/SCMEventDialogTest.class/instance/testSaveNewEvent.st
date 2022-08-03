testing
testSaveNewEvent

	self addDialog
		load: self demoTomorrowEvent.
	self addDialog saveEvent.
	
	self assert: (self calendar events includes: self demoEvent).
	self assert: (self calendar events includes: self demoTomorrowEvent)
	