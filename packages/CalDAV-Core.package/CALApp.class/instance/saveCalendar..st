calender
saveCalendar: aCalendar
	
	(CALCalendar calendarDirectory fileExists: aCalendar name)
		ifFalse: [aCalendar storeEvents]