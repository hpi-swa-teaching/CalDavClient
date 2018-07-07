as yet unclassified
testDeleteEvent

	| event |
	
	event := self demoEvent.
	(app calendars at: 2) clearEvents.
	app addEvent: event.
	self assert: (app selectedEvents includes: event) not.
	editDialog
		parent: app;
		event: event;
		oldEvent: event;
		deleteEvent.
	self assert: (app selectedEvents includes: event) not.