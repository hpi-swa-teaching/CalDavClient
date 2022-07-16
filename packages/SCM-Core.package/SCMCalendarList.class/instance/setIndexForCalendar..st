save and load
setIndexForCalendar: aSCMCalendar

	self basicCalendarIndex: ((self editableCalendars includes: aSCMCalendar) ifTrue: [self editableCalendars indexOf: aSCMCalendar startingAt: 1] ifFalse: [1])
	