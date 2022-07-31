initialize
createForEvent: aSCMEvent

	| dialog |
	
	dialog := self new
		calendarList: (SCMCalendarList createWith: SCMCalendarRepository get);
		load: aSCMEvent;
		oldEvent: aSCMEvent;
		yourself.
	
	 ^ ToolBuilder default open: dialog