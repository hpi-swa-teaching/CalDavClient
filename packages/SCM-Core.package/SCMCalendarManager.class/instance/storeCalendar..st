calendar actions
storeCalendar: aSCMCalendar

	(aSCMCalendar calendarDirectory fileExists: aSCMCalendar myName)
		ifFalse: [aSCMCalendar store]