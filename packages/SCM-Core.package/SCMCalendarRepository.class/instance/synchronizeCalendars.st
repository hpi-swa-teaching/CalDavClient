as yet unclassified
synchronizeCalendars

	SCMCalendar calendarDirectory fileNames do: 
		[ :fileName | self addCalendar: 
			(SCMCalendar loadNamed: fileName)].
	self storeAllCalendars