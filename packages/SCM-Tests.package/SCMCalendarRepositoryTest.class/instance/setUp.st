running
setUp

	self demoCalendarRepository: SCMCalendarRepository getDummy.
	self setUpCalendars.
	self demoEvent: SCMEvent new.
	self demoEvent title: 'demoEvent'