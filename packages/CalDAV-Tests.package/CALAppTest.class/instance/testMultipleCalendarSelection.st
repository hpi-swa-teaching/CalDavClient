as yet unclassified
testMultipleCalendarSelection
	
	self assert: app calendarsToShow size <= app calendars size.
	app showEventsForCalendar: (app indexOfCalendarNamed: 'testCalendar') put: true.
	self assert: (app shouldDisplayEventsFor: (app indexOfCalendarNamed: 'testCalendar')) description: 'the second calendar in the list should be selected'.
	app showEventsForCalendar: (app indexOfCalendarNamed: 'testCalendar') put: false.
	self assert: (app shouldDisplayEventsFor: (app indexOfCalendarNamed: 'testCalendar')) not.