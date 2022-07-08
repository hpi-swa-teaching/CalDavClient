running
setUp

	self demoCalendar: (SCMCalendar newNamed: 'demoCalendar' withDefaultColor: Color turquoise).
	self createEvents do: [:each |
		self demoCalendar addEvent: each].
	
	self wantsToTest: (SCMView createWith: (SCMCalendarRepository new)).
	self subject calendarRepository addCalendar: self demoCalendar