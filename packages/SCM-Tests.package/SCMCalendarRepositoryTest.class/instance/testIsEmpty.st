testing
testIsEmpty

	self assert: self calendarRepository isEmpty not.
	self calendarRepository deleteCalendar: self calendar1.
	self calendarRepository deleteCalendar: self calendar2.
	self assert: self calendarRepository isEmpty