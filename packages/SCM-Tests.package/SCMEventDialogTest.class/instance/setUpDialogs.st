running
setUpDialogs

	self eventDialog: (SCMEventDialog new
		calendarList: (SCMCalendarList createWith: self calendarRepository);
		yourself).
	
	self addDialog: (SCMAddEventDialog
		createWith: self calendarRepository).
	
	self editDialog: (SCMEditEventDialog
		createWith: self calendarRepository forEvent: self demoEvent).
	
	self showDialog: (SCMShowEventDialog
		createForEvent: self demoEvent)