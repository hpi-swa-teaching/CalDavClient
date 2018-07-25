testing
testAddEvent

	self demoCalendar1 addEvent: self demoEvent.
	self assert: (self demoCalendar1 events includes: self demoEvent) description: 'event should be added to calendar'