running
setUp

	self calendarRepository: (SCMCalendarRepository new).
	self demoCalendar: (SCMCalendar newNamed: 'demoCalendar').
	self demoCalendar addEvent: self demoEvent.
	
	self calendarRepository addCalendar: self demoCalendar.
	
	self eventDialog: SCMEventDialog new.
	self eventDialog calendarList: (SCMCalendarList createWith: self calendarRepository).
	
	self addDialog: SCMAddEventDialog new.
	self addDialog calendarList: (SCMCalendarList createWith: self calendarRepository).
	
	self editDialog: SCMEditEventDialog new.
	self editDialog 
		calendarList: (SCMCalendarList createWith: self calendarRepository);
		load: self demoEvent;
		oldEvent: self demoEvent.
		
	self showDialog: SCMShowEventDialog new.
	self showDialog
		calendarList: (SCMCalendarList createWith: self calendarRepository);
		load: self demoEvent.
		