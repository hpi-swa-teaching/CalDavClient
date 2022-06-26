as yet unclassified
setUp

	| calendar |
	
	calendar := SCMCalendar new.
	self createEvents do: [:each |
		calendar addEvent: each].
	
	self wantsToTest: (SCMView createWith: (SCMCalendarManager new)).
	self subject calendarManager addCalendar: calendar