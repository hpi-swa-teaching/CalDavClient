calendar management
importCalendar
	
	| url |
	
	url := UIManager default 
			request: 'Enter Link: '
			initialAnswer: ''.
	url isEmpty not ifTrue: [self addCalendar: (CALWebCalendar newFromLink: url)]