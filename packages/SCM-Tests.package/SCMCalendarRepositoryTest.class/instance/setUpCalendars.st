running
setUpCalendars

	self demoCalendar: (SCMCalendar newNamed: 'demoCalendar' withDefaultColor: Color turquoise).
	self demoCalendar2: (SCMCalendar newNamed: 'demoCalendar2' withDefaultColor: Color turquoise).
	self demoCalendar3: (SCMCalendar newNamed: 'demoCalendar3' withDefaultColor: Color turquoise).
	
	self demoCalendarRepository addCalendars: self demoCalendars