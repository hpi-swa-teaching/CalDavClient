calendar management
importWebDAVCalendar
	
	| username password url |
	
	url := UIManager default
			request: 'Enter Url'
			initialAnswer: ''.
	url = '' ifTrue: [^ self].
	
	username := UIManager default 
			request: 'Enter Username'
			initialAnswer: ''.
	username = '' ifTrue: [^ self].
			
	password := UIManager default
			requestPassword: 'Enter Password'.
	
	[self addCalendar:
		(CALWebDAVCalendar 
			newWithUrl: url
			Username:  username
			Password: password )]
		on: Error 
		do: [:each | UIManager inform: ('Encounterd Error adding the Calendar: ' , each messageText).
					UIManager inform:  'Aborting adding calendar']