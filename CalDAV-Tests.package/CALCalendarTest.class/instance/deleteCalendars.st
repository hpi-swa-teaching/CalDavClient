running
deleteCalendars

	CALCalendar calendarDirectory deleteFileNamed: (self demoCalendar1 name).
	CALCalendar calendarDirectory deleteFileNamed: (self demoCalendar2 name).
	CALCalendar calendarDirectory deleteFileNamed: (self demoCalendar3 name)
