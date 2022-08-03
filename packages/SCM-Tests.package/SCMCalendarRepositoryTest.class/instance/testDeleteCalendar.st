testing
testDeleteCalendar

	self assert: (self demoCalendarRepository calendars includes: self demoCalendar2).
	self demoCalendarRepository deleteCalendar: self demoCalendar2.
	self assert: (self demoCalendarRepository calendars includes: self demoCalendar2) not