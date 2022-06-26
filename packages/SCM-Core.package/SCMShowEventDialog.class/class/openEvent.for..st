as yet unclassified
openEvent: aSCMEvent for: aSCMCalendarRepository

	| dialog |
	
	dialog := self new.
	dialog
		calendarList: (SCMCalendarList createWith: aSCMCalendarRepository);
		load: aSCMEvent.
	 ^ ToolBuilder default open: dialog