as yet unclassified
setUp

	app := CALApp new prepareCalendarsForTesting.
	app selectionFileName: 'testSelection'.
	app restoreCalendarSelection.
	app addCalendar: (CALCalendar withName: 'testCalendar').
	app calendarIndex: app calendars size