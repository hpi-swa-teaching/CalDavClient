as yet unclassified
createForEvent: aSCMEvent 

	| dialog |
	
	dialog := self new.
	dialog
		calendarList: (SCMCalendarList createWith: (self makeDummyRepositoryFor: aSCMEvent));
		load: aSCMEvent.
	 ^ ToolBuilder default open: dialog