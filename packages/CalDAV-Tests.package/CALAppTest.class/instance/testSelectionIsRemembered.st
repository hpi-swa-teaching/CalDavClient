as yet unclassified
testSelectionIsRemembered

	self assert: CALCalendar calendarDirectory contains: 'testCalendar' description: 'testCalendar should be added in setUp'.
	self assert: app selectionFileName equals: 'testSelection' description: 'real selection should not be touched'.	
	app hideAllEvents.
	app showEventsForCalendar: (app indexOfCalendarNamed: 'testCalendar') put: true.
	self assert: app calendarsToShow size = 1 description: 'only testCalendar should be selected'.
	self assert: (app calendarsToShow includes: 'testCalendar') description: 'selection should include testCalendar'.
	app := CALApp new 
		restoreCalendarNamed: 'testCalendar' ofType: CALCalendar;
		prepareCalendarsForTesting;
		selectionFileName: 'testSelection';
		restoreCalendarSelection;
		yourself.
	self assert: app calendarsToShow size = 1 description: 'only testCalendar should be selected'.
	self assert: (app calendarsToShow includes: 'testCalendar') description: 'selection should include testCalendar'