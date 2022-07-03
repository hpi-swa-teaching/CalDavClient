testing
testSaveNewEvent

	self addDialog
		load: self demoEvent2.
	self addDialog saveEvent.
		
	self assert: (self calendar events includes: self demoEvent).
	self assert: (self calendar events includes: self demoEvent2)
	