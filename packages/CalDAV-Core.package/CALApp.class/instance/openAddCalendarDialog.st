subwindows
openAddCalendarDialog

	| calendarName |
	
	calendarName := UIManager default
		request: 'How should it be named?:'
		initialAnswer: ''.
	
	calendarName isEmpty not ifTrue: [self addCalendar: (CALCalendar withName: calendarName)].
	self changed: #calendarNames