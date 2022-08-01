testing
testResetIndex

	self calendarList basicCalendarIndex: 2.
	self calendarList resetIndex.
	self assert: self calendarList calendarIndex equals: 1