as yet unclassified
testDeleteEvent

	testCalendar1 addEvent: self demoEvent2.
	testCalendar1 deleteEvent: self demoEvent2.
	self assert: (testCalendar1 events includes: self demoEvent2) not