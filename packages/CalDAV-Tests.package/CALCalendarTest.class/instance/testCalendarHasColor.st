as yet unclassified
testCalendarHasColor

	self assert: testCalendar1 color isNil not.
	testCalendar1 color: Color green.
	self assert: testCalendar1 color = Color green