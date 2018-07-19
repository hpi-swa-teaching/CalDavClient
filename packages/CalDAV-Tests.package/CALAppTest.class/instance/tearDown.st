as yet unclassified
tearDown
	
	[self app deleteCalendarNamed: 'testCalendar'] on: Error do: [].
	CALApp fileDirectory deleteFileNamed: app selectionFileName