subwindows
openAddCalendarDialog

	| calendarName |
	
	calendarName := UIManager default
		request: 'How should it be named?:'
		initialAnswer: ''.
	calendarName ifNotEmpty: [self addCalendar: (CALCalendar withName: calendarName)].
	self changed: #calendarNames