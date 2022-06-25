accessing
loadCalendars

	SCMCalendar calendarDirectory fileNames do: 
		[:fileName | self addCalendar: 
			(SCMCalendar newWithName: fileName 
								andEvents: (self extractEventsFrom: fileName))]
	
	