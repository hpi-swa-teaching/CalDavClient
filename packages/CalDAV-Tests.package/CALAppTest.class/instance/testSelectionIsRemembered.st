testing
testSelectionIsRemembered

	self assert: CALCalendar calendarDirectory contains: 'testCalendar' description: 	'testCalendar should be added in setUp'.
	self assert: self app selectionFileName equals: 'testSelection' description: 'real selection 	should not be touched'.	
	self app 
		hideAllEvents;
		showEventsForCalendar: (self app indexOfCalendarNamed: 'testCalendar') put: true.
	self assert: self app calendarsToShow size = 1 description: 'only testCalendar should be selected'.
	self assert: (self app calendarsToShow includes: 'testCalendar') description: 'selection should include testCalendar'.
	self app: (CALApp new 
			restoreCalendarNamed: 'testCalendar' ofType: CALCalendar;
			prepareCalendarsForTesting;
			selectionFileName: 'testSelection';
			restoreCalendarSelection;
			yourself).
	self assert: self app calendarsToShow size = 1 description: 'only testCalendar should be selected'.
	self assert: (self app calendarsToShow includes: 'testCalendar') description: 'selection should include testCalendar'