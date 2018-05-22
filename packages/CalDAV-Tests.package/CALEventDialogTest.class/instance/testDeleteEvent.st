as yet unclassified
testDeleteEvent

	| app |
	
	app := CALApp new.
	app addEvent: self demoEvent.
	app addEvent: self demoEvent2.
	
	editDialog
		parent: CALApp new;
		event: app selectedCalendar events first;
		deleteEvent.
	