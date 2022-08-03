testing
testBasicCalendarIndex

	self calendarList basicCalendarIndex: 2.
	self assert: self calendarList calendarIndex equals: 2