subwindows
openAddCalendarDialog

	|calendarName|
	calendarName := UIManager default
		request: 'How should it be named?:'
		initialAnswer: ''.
	
	calendarName = '' ifFalse: [self addCalendar: (CALCalendar withName: calendarName)].
	self changed: #calendarNames
	