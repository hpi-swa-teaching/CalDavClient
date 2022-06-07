as yet unclassified
storeCalendar: aSCMCalendar

	(aSCMCalendar calendarDirectory fileExists: aSCMCalendar name)
		ifFalse: [aSCMCalendar store]