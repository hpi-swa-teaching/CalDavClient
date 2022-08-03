initialize
openForEvent: aSCMEvent
	
	 ^ ToolBuilder default open: (self createForEvent: aSCMEvent)