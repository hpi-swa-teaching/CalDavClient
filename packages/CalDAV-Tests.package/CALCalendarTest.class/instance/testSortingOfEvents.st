testing
testSortingOfEvents
	
	self demoCalendar1
		addEvent: self demoEvent2;
		addEvent: self demoEvent.
	self assert: (self demoCalendar1 events first = self demoEvent)