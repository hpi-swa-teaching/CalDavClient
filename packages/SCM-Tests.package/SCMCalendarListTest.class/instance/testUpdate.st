testing
testUpdate

	self demoCalendarList basicCalendarIndex: 2.
	self demoCalendarList update: #calendarsChanged.
	self assert: self demoCalendarList calendarIndex equals: 1