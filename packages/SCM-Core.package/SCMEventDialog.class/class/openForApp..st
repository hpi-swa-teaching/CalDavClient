initialize
openForApp: aSCMApp
		
	 ^ ToolBuilder default open: (self new calendarManager: aSCMApp calendarManager)