calendar management
importCalendar

	self addCalendar: (CALCalendar newFromLink: 
		(UIManager default 
			request: 'Enter Link: '
			initialAnswer: ''))