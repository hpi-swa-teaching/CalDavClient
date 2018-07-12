as yet unclassified
tearDown
	
	[app deleteCalendarNamed: 'testCalendar'] on: Error do: [].
	app class fileDirectory deleteFileNamed: app selectionFileName