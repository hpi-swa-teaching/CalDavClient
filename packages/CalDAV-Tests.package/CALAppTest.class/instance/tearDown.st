testing
tearDown
	
	[self app deleteCalendarNamed: 'testCalendar'] on: Error do: [].
	CALApp fileDirectory deleteFileNamed: self app selectionFileName