parsing
parseCompleteEventInformation: responseContent

	| iCalCalendar |
	
	iCalCalendar := ICCalendarHandParserExtended parseCalendarString: responseContent.
	^ iCalCalendar 