running
setUp

	| calendarMock |
	dList := SCDayList new.
	calendarMock := SCCalDavCalendar new.
	dList calendar: calendarMock.
	dList initialize.