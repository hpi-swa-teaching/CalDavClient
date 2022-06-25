initialize
openEvent: aSCMEvent for: aSCMCalendarRepository

	| dialog |
	
	dialog := self new.
	dialog
		calendarList: (SCMCalendarList createWith: aSCMCalendarRepository);
		load: aSCMEvent;
		oldEvent: aSCMEvent.
	 ^ ToolBuilder default open: dialog