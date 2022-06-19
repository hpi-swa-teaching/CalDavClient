accessing
loadCalendars

	SCMCalendar calendarDirectory fileNames do: 
		[:fileName | self addCalendars: 
			{SCMCalendar newWithName: fileName 
								andEvents:(self extractEventsFrom: fileName)} asOrderedCollection]
	
	