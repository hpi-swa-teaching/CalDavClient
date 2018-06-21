as yet unclassified
setUp

	app := CALApp new.
	app addCalendar: (CALCalendar withName: 'testCalendar').
	app monthPane buildSpec: ToolBuilder default. 
	app calendarIndex: app calendars size.
	eventDialog := CALEventDialog new.
	addDialog := CALAddEventDialog new.
	addDialog parent: app.
	editDialog := CALEditEventDialog new.
	editDialog parent: app