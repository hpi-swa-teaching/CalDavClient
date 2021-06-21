calendar management
storeCalendar: aCALCalendar
	
	(aCALCalendar calendarDirectory fileExists: aCALCalendar name) ifFalse: [aCALCalendar store]