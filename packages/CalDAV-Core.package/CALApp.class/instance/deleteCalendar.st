calendar management
deleteCalendar

	| name |
	
	name := UIManager default 
			request: 'Enter name of calendar to delete: '
			initialAnswer: ''.
	name isEmpty not ifTrue: [self deleteCalendarNamed: name]