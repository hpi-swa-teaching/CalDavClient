initialize
openForApp: aSCMApp
		
	 ^ ToolBuilder default open: (self new calendarList: (SCMCalendarList createWith: aSCMApp))