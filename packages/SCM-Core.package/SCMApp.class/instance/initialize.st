initialization
initialize

	super initialize.
	self
		calendarManager: (SCMCalendarList createWith: self);
		loadCalendars;
		configureLayout;
		addDockingBar;
		addView;
		openUp