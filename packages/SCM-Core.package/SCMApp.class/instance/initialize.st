initialization
initialize
	
	super initialize.
	self
		calendarRepository: (SCMCalendarRepository createWith: self);
		loadCalendars;
		configureLayout;
		addDockingBar;
		addView;
		openUp