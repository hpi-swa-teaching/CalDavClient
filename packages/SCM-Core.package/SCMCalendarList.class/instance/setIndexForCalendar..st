actions
setIndexForCalendar: aSCMCalendar

	aSCMCalendar isEditable 
		ifTrue: [self basicCalendarIndex: (self editableCalendars indexOf: aSCMCalendar startingAt: 1)]
		ifFalse: [self basicCalendarIndex: 1]