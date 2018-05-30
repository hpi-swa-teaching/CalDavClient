as yet unclassified
setUp

	app := CALApp new.
	app addCalendar: (CALCalendar withName: 'testCalendar').
	eventDialog := CALEventDialog new.
	addDialog := CALAddEventDialog new.
	editDialog := CALEditEventDialog new