testing
testIsEmpty

	self assert: self demoCalendarRepository isEmpty not.
	self demoCalendarRepository deleteCalendar: self demoCalendar.
	self demoCalendarRepository deleteCalendar: self demoCalendar2.
	self assert: self demoCalendarRepository isEmpty