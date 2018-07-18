as yet unclassified
setUp

	app := CALApp new prepareCalendarsForTesting.
	app 
		selectionFileName: 'testSelection';
		restoreCalendarSelection;
		addCalendar: (CALCalendar withName: 'testCalendar');
		calendarIndex: app calendars size