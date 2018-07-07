as yet unclassified
testChangeEventCalendar

	| event |
	
	event := self demoEvent.
	app calendarIndex: 2.
	app addEvent: event.
	editDialog
		parent: app;
		event: event;
		oldEvent: event.
	app calendarIndex: 1.
	editDialog saveEvent.
		
	self assert: ((app calendars at: 2) includes: event) not.
	self assert: ((app calendars at: 1) includes: event).