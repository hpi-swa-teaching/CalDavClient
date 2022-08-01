running
setUpCalendars

	self calendar1: (SCMMockCalendar
		newNamed: 'demoCalendar' withDefaultColor: Color turquoise).
	self calendar2: (SCMMockCalendar
		newNamed: 'demoCalendar2' withDefaultColor: Color turquoise).
	self calendar3: (SCMMockCalendar
		newNamed: 'demoCalendar3' withDefaultColor: Color turquoise).
	
	self calendarRepository addCalendars: self twoCalendars