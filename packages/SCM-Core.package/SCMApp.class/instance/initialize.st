initialization
initialize

	super initialize.
	
	self calendarManager: SCMCalendarManager new. 

	self
		loadCalendars;
		configureLayout;
		addDockingBar;
		addView;
		openUp