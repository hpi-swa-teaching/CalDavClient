as yet unclassified
setUp

	self wantsToTest: SCMCalendarRepository getDummy.
	self setUpCalendars.
	self demoEvent: SCMEvent new.
	self demoEvent title: 'demoEvent'