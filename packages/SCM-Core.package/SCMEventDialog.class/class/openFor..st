initialize
openFor: aSCMCalendarRepository
		
	 ^ ToolBuilder default open: (self new calendarList: (SCMCalendarList createWith: aSCMCalendarRepository))