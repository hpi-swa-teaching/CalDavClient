accessing
testIsEmpty

	self assert: self demoCalendarList isEmpty.
	self demoCalendarList calendarRepository addCalendar: SCMCalendar new.
	self assert: self demoCalendarList isEmpty not.