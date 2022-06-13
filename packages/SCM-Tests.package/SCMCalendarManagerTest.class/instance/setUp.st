as yet unclassified
setUp

	self wantsToTest: SCMCalendarManager new.
	self setUpCalendars.
	self demoEvent: SCMEvent new.
	self demoEvent title: 'demoEvent'