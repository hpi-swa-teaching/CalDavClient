initialization
initialize

	super initialize.
	self calendarList: (SCMCalendarList createWith: SCMCalendarRepository get)