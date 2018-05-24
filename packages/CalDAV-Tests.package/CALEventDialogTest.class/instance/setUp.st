as yet unclassified
setUp

	app := CALApp new.
	app selectedCalendar: (CALCalendar new name: 'testCalendar').
	eventDialog := CALEventDialog new.
	addDialog := CALAddEventDialog new.
	editDialog := CALEditEventDialog new