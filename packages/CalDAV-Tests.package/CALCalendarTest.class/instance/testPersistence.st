testing
testPersistence
	
	self demoCalendar3
		addEvent: self demoEvent;
		addEvent: self demoEvent2;
		deleteEvent: self demoEvent.
	self demoCalendar3: (CALCalendar new name: 'cal03').
	self demoCalendar3
		restore.
	self assert: (self demoCalendar3 events includes: self demoEvent2).
	self assert: (self demoCalendar3 events includes: self demoEvent) not