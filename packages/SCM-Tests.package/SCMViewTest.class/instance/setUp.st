running
setUp

	| calendar |
	
	calendar := SCMCalendar newWithName: '____TESTING_CALENDER'.
	self createEvents do: [:each |
		calendar addEvent: each].
	
	self wantsToTest: (SCMView createWith: (SCMCalendarRepository new)).
	self subject calendarRepository addCalendar: calendar