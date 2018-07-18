as yet unclassified
testMultipleCalendarSelection
	
	self assert: app calendarsToShow size <= app calendars size description: 'can''t show more calendars than present'.
	app showEventsForCalendar: (app indexOfCalendarNamed: 'testCalendar') put: true.
	self assert: (app isShowingEventsFor: (app indexOfCalendarNamed: 'testCalendar')) description: 'test calendar should be selected'.
	app showEventsForCalendar: (app indexOfCalendarNamed: 'testCalendar') put: false.
	self assert: (app isShowingEventsFor: (app indexOfCalendarNamed: 'testCalendar')) not description: 'test calendars shouldn''t be selected'.