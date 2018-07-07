as yet unclassified
testDeleteEvent

	| event |
	
	event := self demoEvent.
	(app calendars at: 2) clearEvents.
	app calendarIndex: 2.
	app addEvent: event.
	self assert: ((app selectedEvents) includes: event).
	editDialog
		parent: app;
		event: event;
		oldEvent: event;
		deleteEvent.
	self assert: (app selectedEvents includes: event) not.