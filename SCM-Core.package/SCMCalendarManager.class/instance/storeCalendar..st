as yet unclassified
storeCalendar: aSCMCalendar

	"why does this method exist?"
	(aSCMCalendar calendarDirectory fileExists: aSCMCalendar name)
		ifFalse: [aSCMCalendar store]