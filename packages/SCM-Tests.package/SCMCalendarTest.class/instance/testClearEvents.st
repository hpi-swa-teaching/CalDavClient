testing
testClearEvents

	self demoCalendar addEvent: self createDummyEvent.
	self assert: self demoCalendar isEmpty not.
	self demoCalendar clearEvents.
	self assert: self demoCalendar isEmpty
	