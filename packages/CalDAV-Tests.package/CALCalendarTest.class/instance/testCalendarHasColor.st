as yet unclassified
testCalendarHasColor

	self assert: testCalendar1 color isNil not description: 'all calendars ahould be initialized with a color'.
	testCalendar1 color: Color green.
	self assert: testCalendar1 color = Color green description: 'testCalendar1 should have green color'