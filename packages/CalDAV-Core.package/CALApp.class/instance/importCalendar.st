calendar management
importCalendar
	
	self addCalendar: (CALWebCalendar newFromLink: 
		(UIManager default 
			request: 'Enter Link: '
			initialAnswer: ''))