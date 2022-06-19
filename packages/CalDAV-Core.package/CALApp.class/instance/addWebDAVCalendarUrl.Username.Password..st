calendar management
addWebDAVCalendarUrl: aString Username: aSecondString Password: aThirdString
	
	[self
		addCalendar: (CALWebDAVCalendar
				newWithUrl: aString
				Username: aSecondString
				Password: aThirdString)]
		on: Error
		do: [:each | 
			UIManager inform: 'Encounterd Error adding the Calendar: ' , each messageText.
			UIManager inform: 'Aborting adding calendar']