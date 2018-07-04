as yet unclassified
setUp

	app := CALApp new.
	app calendars add: (CALCalendar withName: 'testCalendar').
	app calendarIndex: app calendars size.
	app buildWith: ToolBuilderMock default