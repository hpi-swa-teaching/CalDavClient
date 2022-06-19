initialization
initialize

	super initialize.
	self
		calendarManager: SCMCalendarManager new;
		loadCalendars;
		configureLayout;
		addDockingBar;
		addView;
		openUp