parsing
parseCompleteEventInformation: responseContent

	| iCalCalendar |
	
	[iCalCalendar := ICCalendarHandParserExtended parseCalendarString: responseContent] 
		on: Error do: [self error: 'Link not viable'].
	^ iCalCalendar 