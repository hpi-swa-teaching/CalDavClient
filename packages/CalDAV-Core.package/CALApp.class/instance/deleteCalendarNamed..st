calendar management
deleteCalendarNamed: aName

	self calendarIndex: (self calendars indexOf: (self calendarNamed: aName)).
	self deleteSelectedCalendar