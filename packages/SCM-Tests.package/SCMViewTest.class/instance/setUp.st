running
setUp

	self calendar: (SCMCalendar newWithName: 'Test').
	self createEvents do: [:each |
		self calendar addEvent: each].
	
	self wantsToTest: (SCMView createWith: (SCMCalendarRepository new)).
	self subject calendarRepository addCalendar: self calendar