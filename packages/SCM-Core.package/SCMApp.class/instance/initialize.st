initialization
initialize
	
	super initialize.
	self
		calendarRepository: SCMCalendarRepository get;
		loadCalendars;
		configureLayout;
		addDockingBar;
		addView;
		openUp