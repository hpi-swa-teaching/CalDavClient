as yet unclassified
testSelectionIsRemembered

	self assert: (CALCalendar calendarDirectory fileExists: 'testCalendar') description: 'testCalendar should be added in setUp'.
	app selectionFileName: 'testSelection'.
	1 to: app calendars size do: [ :each | app showEventsForCalendar: each put: false].
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
	self assert: (app calendarsToShow includes: 'testCalendar') description: 'selection should include testCalendar'.