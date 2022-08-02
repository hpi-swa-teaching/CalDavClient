initialization
createForEvent: aSCMEvent 

	| dialog |
	
	dialog := self new.
	dialog
		calendarList: (SCMCalendarList createWith: (self createLocalRepositoryFor: aSCMEvent));
		load: aSCMEvent.
	
	 ^ ToolBuilder default open: dialog