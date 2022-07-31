testing
testEventCount

	3 timesRepeat: [self demoCalendar addEvent: self createDummyEvent].
	self assert: 3 equals: self demoCalendar events size