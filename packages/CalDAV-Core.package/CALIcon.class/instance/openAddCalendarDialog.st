accessing
openAddCalendarDialog

	| calendarName |
	
	calendarName := UIManager default
		request: 'How should it be named?:'
		initialAnswer: ''