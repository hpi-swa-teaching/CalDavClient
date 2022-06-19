testing
testDeleteEvent

	| event |
	
	event := self demoEvent.
	(self app calendarNamed: 'testCalendar') clearEvents.
	self app calendarIndex: (self app indexOfCalendarNamed: 'testCalendar').
	self app addEvent: event.
	self assert: ((self app calendarNamed: 'testCalendar') includes: event) description: 'added event should be included in calendar'.
	self editDialog
		app: self app;
		event: event;
		oldEvent: event;
		deleteEvent.
	self assert: (self app selectedEvents includes: event) not