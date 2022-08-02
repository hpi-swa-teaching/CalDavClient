accessing
calendarIndex: anInteger

	(self selectedOtherCalendar: anInteger)
		ifTrue: [self basicCalendarIndex: anInteger]. 
	self
		changed: #calendarIndex;
		changed: #calendarSelected