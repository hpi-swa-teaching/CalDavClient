as yet unclassified
testEmptySelectionIsRemembered

	self app selectionFileName: 'testSelection'.
	self app hideAllEvents.
	self assert: self app calendarsToShow isEmpty description: 'no calendars should be selected'.
	self app: (CALApp new 
		selectionFileName: 'testSelection';
		restoreCalendarSelection;
		yourself).
	self assert: self  app calendarsToShow isEmpty description: 'no calendars should be selected'