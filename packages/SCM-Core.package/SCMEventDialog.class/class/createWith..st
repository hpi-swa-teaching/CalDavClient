initialization
createWith: aSCMCalendarRepository
		
	 ^ ToolBuilder default open:
			(self new
				calendarList: (SCMCalendarList createWith: aSCMCalendarRepository);
				yourself)