as yet unclassified
testCalendarAddingAndRemoval

	app addCalendar: (CALCalendar withName: 'persistenceTest').
	self assert: CALCalendar calendarDirectory contains: 'persistenceTest'.
	app deleteCalendarNamed: 'persistenceTest'.
	self assert: CALCalendar calendarDirectory containsNo: 'persistenceTest'