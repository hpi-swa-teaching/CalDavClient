testing
testDeleteEvent

	| event |
	
	event := self demoEvent.
	(app calendarNamed: 'testCalendar') clearEvents.
	app calendarIndex: (app indexOfCalendarNamed: 'testCalendar').
	app addEvent: event.
	self assert: ((app calendarNamed: 'testCalendar') includes: event) description: 'added event should be included in calendar'.
	editDialog
		parent: app;
		event: event;
		oldEvent: event;
		deleteEvent.
	self assert: (app selectedEvents includes: event) not.