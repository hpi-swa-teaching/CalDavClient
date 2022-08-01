running
setUp

	self calendarRepository: SCMMockCalendarRepository get.
	self setUpCalendars.
	self event: SCMEvent new.
	self event title: #event