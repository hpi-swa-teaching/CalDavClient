as yet unclassified
testPersistence

	| calendar |
	
	calendar := CALCalendar new name: 'testCalendar'.
	calendar 
		addEvent: self demoEvent;
		addEvent: self demoEvent2;
		deleteEvent: self demoEvent.
	calendar := CALCalendar new name: 'testCalendar'.
	calendar
		restoreEvents.
	self assert: (calendar events includes: self demoEvent2).
	self assert: (calendar events includes: self demoEvent) not.