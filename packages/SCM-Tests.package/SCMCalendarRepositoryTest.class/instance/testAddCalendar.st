testing
testAddCalendar

	self assert: (self demoCalendarRepository calendars includes: self demoCalendar3) not.
	self demoCalendarRepository addCalendar: self demoCalendar3.
	self assert: (self demoCalendarRepository calendars includes: self demoCalendar3)