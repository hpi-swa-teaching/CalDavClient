testing
testDeleteEvent

	self demoCalendar1 addEvent: self demoEvent2.
	self demoCalendar1 deleteEvent: self demoEvent2.
	self assert: (self demoCalendar1 events includes: self demoEvent2) not