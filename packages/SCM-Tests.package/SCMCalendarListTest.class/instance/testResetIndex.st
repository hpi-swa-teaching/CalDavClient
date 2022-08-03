testing
testResetIndex

	self demoCalendarList basicCalendarIndex: 2.
	self demoCalendarList resetIndex.
	self assert: self demoCalendarList calendarIndex equals: 1