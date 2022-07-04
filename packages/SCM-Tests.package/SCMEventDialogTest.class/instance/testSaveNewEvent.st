testing
testSaveNewEvent

	self addDialog
		load: self demoEvent2.
	self addDialog saveEvent.
		
	self assert: (self demoCalendar events includes: self demoEvent).
	self assert: (self demoCalendar events includes: self demoEvent2)
	