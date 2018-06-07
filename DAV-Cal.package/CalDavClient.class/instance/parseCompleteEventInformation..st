requests
parseCompleteEventInformation: responseContent

	| iCalCalendar |
	iCalCalendar := ICCalendarHandParser parseCalendarString: responseContent.
	^ iCalCalendar 