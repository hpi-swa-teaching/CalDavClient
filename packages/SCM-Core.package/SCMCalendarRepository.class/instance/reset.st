calendar management
reset

	| copiedCalendars |
	
	copiedCalendars := calendars veryDeepCopy.
	copiedCalendars do: [:calendar | self deleteCalendar: calendar]