as yet unclassified
setUp

	app := CALApp new.
	app addCalendar: (CALCalendar withName: 'testCalendar').
	app calendarIndex: app calendars size.
	eventDialog := CALEventDialog new.
	addDialog := CALAddEventDialog new.
	editDialog := CALEditEventDialog new