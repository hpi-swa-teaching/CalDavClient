as yet unclassified
createWith: aSCMCalendarRepository

	 ^ ToolBuilder default open:
			(self new
				calendarRepository: aSCMCalendarRepository;
				yourself)