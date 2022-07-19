as yet unclassified
loadCalendars

	SCMCalendar calendarDirectory fileNames do: 
		[ :fileName | self addCalendar: 
			(SCMCalendar loadNamed: fileName)]