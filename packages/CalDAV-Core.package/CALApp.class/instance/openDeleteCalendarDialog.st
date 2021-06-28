calendar management
openDeleteCalendarDialog

	| name |
	
	name := UIManager default 
		request: 'Enter name of calendar to delete: '
		initialAnswer: ''.
	[self deleteCalendarNamed: name] 
		on: Error 
		do: [:each | UIManager inform: 'Deletion failed: ', each messageText]