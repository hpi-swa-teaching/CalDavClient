running
tearDown
	
	[self app deleteCalendarNamed: 'testCalendar'] on: Error do: [].
	self app class fileDirectory deleteFileNamed: self app selectionFileName.
	self world abandon