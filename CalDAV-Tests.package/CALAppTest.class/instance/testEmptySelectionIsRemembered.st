testing
testEmptySelectionIsRemembered

	self app selectionFileName: 'testSelection';
			hideAllEvents.
	self assert: self app calendarsToShow isEmpty description: 'no calendars should be selected'.
	self app: (CALApp new 
				selectionFileName: 'testSelection';
				restoreCalendarSelection;
				yourself).
	self assert: self app calendarsToShow isEmpty description: 'no calendars should be selected'