as yet unclassified
testMultipleCalendarSelection
	
	self assert: app calendarsToShow size <= app calendars size.
	app showEventsForCalendar: 2 put: true.
	self assert: (app shouldDisplayEventsFor: 2) description: 'the second calendar in the list should be selected'.
	app showEventsForCalendar: 2 put: false.
	self assert: (app shouldDisplayEventsFor: 2) not.