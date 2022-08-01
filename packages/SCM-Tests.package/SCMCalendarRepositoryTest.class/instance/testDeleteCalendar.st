testing
testDeleteCalendar

	self assert: (self calendarRepository calendars includes: self calendar2).
	self calendarRepository deleteCalendar: self calendar2.
	self assert: (self calendarRepository calendars includes: self calendar2) not