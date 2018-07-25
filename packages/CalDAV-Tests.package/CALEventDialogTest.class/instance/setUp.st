running
setUp

	self app: CALApp new prepareCalendarsForTesting.
	self app addCalendar: (CALCalendar withName: 'testCalendar').
	self app monthPanel buildSpec: ToolBuilder default. 
	self app 
		calendarIndex: self app calendars size;
		showEventsForCalendar: 2 put: true.
	self app calendars last clearEvents.
	self eventDialog: CALEventDialog new.
	self addDialog: CALAddEventDialog new.
	self addDialog app: self app.
	self editDialog: CALEditEventDialog new.
	self editDialog app: self app