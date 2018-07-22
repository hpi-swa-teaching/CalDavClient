as yet unclassified
testSortingOfEvents
	
	| calendar |
	
	calendar := CALCalendar withName: 'testCalendar'.
	calendar 
		addEvent: self demoEvent2;
		addEvent: self demoEvent.
	self assert: (calendar events first = self demoEvent)