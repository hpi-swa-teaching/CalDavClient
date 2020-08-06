running
setUp	
	
	|calendarMock|
	
	dayList := SCDayList new.
	calendarMock := SCCalDavCalendar new.
	dayList calendar: calendarMock.
	dayList initialize.