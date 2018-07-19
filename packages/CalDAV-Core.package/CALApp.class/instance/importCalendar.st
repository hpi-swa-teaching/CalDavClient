calendar management
importCalendar
	
	| url |
	
	url := UIManager default 
			request: 'Enter Link: '
			initialAnswer: ''.
	[self addCalendar: (CALSubscriptionICSCalendar newFromLink: url)] 
		on: Error do: [:each | UIManager inform: ('Encounterd Error getting the Calendar: ' , each messageText).
							UIManager inform:  'Aborting importing calendar']