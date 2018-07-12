as yet unclassified
setUp

	app := CALApp new prepareCalendarsForTesting.
	app addCalendar: (CALCalendar withName: 'testCalendar').
	app monthPanel buildSpec: ToolBuilder default. 
	app calendarIndex: app calendars size.
	app showEventsForCalendar: 2 put: true. 
	app calendars last clearEvents.
	eventDialog := CALEventDialog new.
	addDialog := CALAddEventDialog new.
	addDialog parent: app.
	editDialog := CALEditEventDialog new.
	editDialog parent: app