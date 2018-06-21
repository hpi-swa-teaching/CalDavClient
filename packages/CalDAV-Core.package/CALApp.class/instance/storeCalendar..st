calendar management
storeCalendar: aCalendar
	
	(aCalendar calendarDirectory fileExists: aCalendar name) ifFalse: [aCalendar store]