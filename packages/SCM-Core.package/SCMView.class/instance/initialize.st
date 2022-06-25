actions
initialize

	super initialize.
	self
		configureLayout
		startDate: DateAndTime today asDate "better than 'Date today' because it sets the right time zone!"