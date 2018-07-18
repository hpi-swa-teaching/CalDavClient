as yet unclassified
deleteCalendars
	
	CALCalendar calendarDirectory deleteFileNamed: 'testCalendar'.
	CALCalendar calendarDirectory deleteFileNamed: (testCalendar1 name).
	CALCalendar calendarDirectory deleteFileNamed: (testCalendar2 name).
	CALCalendar calendarDirectory deleteFileNamed: (testCalendar3 name)
