as yet unclassified
tearDown
	
	[app deleteCalendarNamed: 'testCalendar'] on: Error do: [].
	CALApp fileDirectory deleteFileNamed: app selectionFileName