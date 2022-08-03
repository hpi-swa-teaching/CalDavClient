testing
testUpdate

	self calendarList basicCalendarIndex: 2.
	self calendarList update: #calendarsChanged.
	self assert: self calendarList calendarIndex equals: 1