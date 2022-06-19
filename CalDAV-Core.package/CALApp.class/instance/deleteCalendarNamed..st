calendar management
deleteCalendarNamed: aString

	self calendarIndex: (self calendars indexOf: (self calendarNamed: aString)).
	self deleteSelectedCalendar