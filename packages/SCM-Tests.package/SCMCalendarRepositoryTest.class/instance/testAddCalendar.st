testing
testAddCalendar

	self assert: (self calendarRepository calendars includes: self calendar3) not.
	self calendarRepository addCalendar: self calendar3.
	self assert: (self calendarRepository calendars includes: self calendar3)