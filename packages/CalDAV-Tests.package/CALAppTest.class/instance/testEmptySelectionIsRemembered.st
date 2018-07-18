as yet unclassified
testEmptySelectionIsRemembered

	app selectionFileName: 'testSelection'.
	app hideAllEvents.
	self assert: app calendarsToShow isEmpty description: 'no calendars should be selected'.
	app := CALApp new 
		selectionFileName: 'testSelection';
		restoreCalendarSelection;
		yourself.
	self assert: app calendarsToShow isEmpty description: 'no calendars should be selected'