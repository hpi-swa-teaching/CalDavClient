as yet unclassified
testAddEvent

	testCalendar1 addEvent: self demoEvent.
	self assert: (testCalendar1 events includes: self demoEvent) description: 'event should be added to calendar'