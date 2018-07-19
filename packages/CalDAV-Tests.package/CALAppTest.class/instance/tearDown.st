as yet unclassified
tearDown
	
	[self app deleteCalendarNamed: 'testCalendar'] on: Error do: [].
	self app class fileDirectory deleteFileNamed: app selectionFileName