as yet unclassified
parseCompleteEventInformation: responseContent

	| iCalCalendar |
	iCalCalendar := ICCalendarHandParserExtended parseCalendarString: responseContent.
	^ iCalCalendar 