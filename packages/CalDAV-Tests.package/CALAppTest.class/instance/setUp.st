testing
setUp

	self app: (CALApp new
		prepareCalendarsForTesting;
		selectionFileName: 'testSelection';
		restoreCalendarSelection;
		addCalendar: (CALCalendar withName: 'testCalendar');
		yourself).
	self app calendarIndex: self app calendars size