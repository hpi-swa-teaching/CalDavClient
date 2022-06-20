accessing
testEventCount

	3 timesRepeat: [self demoCalendar addEvent: SCMEvent new].
	self assert: 3 equals: self demoCalendar eventCount