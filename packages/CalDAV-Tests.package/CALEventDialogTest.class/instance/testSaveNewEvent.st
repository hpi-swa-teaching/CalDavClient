testing
testSaveNewEvent

	self app addEvent: self demoEvent.
	
	self addDialog 
		app: self app;
		event: self demoEvent2;
		saveEvent.
		
	self assert: (self app selectedCalendar events includes: self demoEvent).
	self assert: (self app selectedCalendar events includes: self demoEvent2)
	