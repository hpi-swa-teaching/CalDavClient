initialize
createForEvent: aSCMEvent

	| dialog |
	
	dialog := self new.
	dialog
		calendarList: (SCMCalendarList createWith: SCMCalendarRepository get);
		load: aSCMEvent;
		oldEvent: aSCMEvent.
	 ^ ToolBuilder default open: dialog