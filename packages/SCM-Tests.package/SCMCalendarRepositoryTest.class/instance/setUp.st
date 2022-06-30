as yet unclassified
setUp

	self wantsToTest: SCMCalendarRepository new.
	self setUpCalendars.
	self demoEvent: SCMEvent new.
	self demoEvent title: 'demoEvent'