as yet unclassified
testPersistence
	
	testCalendar3
		addEvent: self demoEvent;
		addEvent: self demoEvent2;
		deleteEvent: self demoEvent.
	testCalendar3 := CALCalendar new name: 'cal03'.
	testCalendar3
		restore.
	self assert: (testCalendar3 events includes: self demoEvent2).
	self assert: (testCalendar3 events includes: self demoEvent) not