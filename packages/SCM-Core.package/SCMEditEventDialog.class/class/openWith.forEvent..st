initialize
openWith: aSCMCalendarRepository forEvent: aSCMEvent
	
	 ^ ToolBuilder default
			open: (self createWith: aSCMCalendarRepository forEvent: aSCMEvent)