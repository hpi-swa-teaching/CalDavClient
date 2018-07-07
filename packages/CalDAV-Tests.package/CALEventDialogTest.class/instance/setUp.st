as yet unclassified
setUp

	app := CALApp new.
	app addCalendar: (CALCalendar withName: 'testCalendar').
	app monthPanel buildSpec: ToolBuilder default. 
	app calendarIndex: app calendars size.
	app calendars last clearEvents.
	eventDialog := CALEventDialog new.
	addDialog := CALAddEventDialog new.
	addDialog parent: app.
	editDialog := CALEditEventDialog new.
	editDialog parent: app