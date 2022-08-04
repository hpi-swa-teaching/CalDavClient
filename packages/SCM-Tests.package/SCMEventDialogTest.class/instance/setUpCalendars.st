running
setUpCalendars
	
	self calendarRepository: SCMMockCalendarRepository get.
	self calendar: (SCMMockCalendar newNamed: #calendar withDefaultColor: Color turquoise).
	self calendar addEvent: self demoEvent.
	self calendarRepository addCalendar: self calendar.