testing
testEventCount

	3 timesRepeat: [self calendar addEvent: self createDummyEvent].
	self assert: 3 equals: self calendar events size