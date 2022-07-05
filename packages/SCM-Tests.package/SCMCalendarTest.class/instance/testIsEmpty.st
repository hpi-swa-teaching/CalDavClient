accessing
testIsEmpty

	self assert: self demoCalendar isEmpty.
	self demoCalendar addEvent: self createDummyEvent.
	self assert: self demoCalendar isEmpty not