testing
testChangeEventCalendar

	| event |
	
	event := self demoEvent.
	self app calendarIndex: 1.
	self app addEvent: event.
	self editDialog
		app: app;
		event: event;
		oldEvent: event.
	self app calendarIndex: 2.
	self editDialog saveEvent.
		
	self assert: ((self app calendars at: 2) includes: event).
	self assert: ((self app calendars at: 1) includes: event) not.