accessing
testCalendarFileExists

	self assert: self demoCalendar calendarFileExists.
	self demoCalendar delete.
	self assert: self demoCalendar calendarFileExists not