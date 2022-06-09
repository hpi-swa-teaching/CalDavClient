as yet unclassified
setUp

	self wantsToTest: SCMCalendarManager new.
	self demoCalendar: SCMCalendar new.
	self demoCalendar name: 'demoCalendar'.
	self demoEvent: SCMEvent new.
	self demoEvent title: 'demoEvent'