as yet unclassified
testCalendarAddingAndRemoval

	self app addCalendar: (CALCalendar withName: 'persistenceTest').
	self assert: CALCalendar calendarDirectory contains: 'persistenceTest'.
	self app deleteCalendarNamed: 'persistenceTest'.
	self assert: CALCalendar calendarDirectory containsNo: 'persistenceTest'