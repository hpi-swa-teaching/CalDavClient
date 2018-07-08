as yet unclassified
setUp

	app := CALApp new.
	app selectionFileName: 'testSelection'.
	app addCalendar: (CALCalendar withName: 'testCalendar').
	app calendarIndex: app calendars size