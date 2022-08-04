actions
saveCalendar
	
	self isValid 
		ifFalse: [self highlightErrors]
		ifTrue: [self calendarRepository addCalendar:
			(SCMCalendar
				newNamed: self calendarTitle 
				withDefaultColor: self calendarColor).
			self close]