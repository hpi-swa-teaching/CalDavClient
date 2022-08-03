running
setUp

	self calendarRepository: SCMMockCalendarRepository get.
	self calendarList: (SCMCalendarList createWith: self calendarRepository)