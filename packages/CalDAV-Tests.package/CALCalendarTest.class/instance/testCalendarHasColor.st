testing
testCalendarHasColor

	self assert: self demoCalendar1 color isNil not description: 'all calendars ahould be initialized with a color'.
	self demoCalendar1 color: Color green.
	self assert: self demoCalendar1 color = Color green description: 'demoCalendar1 should have green color'