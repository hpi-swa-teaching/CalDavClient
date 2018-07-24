calendar management
importSyncCalendar
	
	| username password url |
	
	username := UIManager default 
			request: 'Enter Username'
			initialAnswer: ''.
	username = '' ifTrue: [^ self].
			
	password := UIManager default
			requestPassword: 'Enter Password'.
			
	url := UIManager default
			request: 'Enter Url'
			initialAnswer: ''.
	url = '' ifTrue: [^ self].
	
	[self addCalendar:
		(CALWebDAVCalendar 
			newWithUrl: url
			Username:  username
			Password: password )]
		on: Error 
		do: [:each | UIManager inform: ('Encounterd Error adding the Calendar: ' , each messageText).
					UIManager inform:  'Aborting adding calendar']
		
	
		
			
			
	

			
	