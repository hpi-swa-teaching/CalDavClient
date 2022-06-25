as yet unclassified
loadCalendars

	SCMCalendar calendarDirectory fileNames do: 
		[:fileName | self addCalendar: 
			(SCMCalendar newWithName: fileName)].
	self calendars do: [:calendar | calendar load]
	
	