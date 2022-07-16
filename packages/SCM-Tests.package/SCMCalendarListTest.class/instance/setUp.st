accessing
setUp

	self demoCalendarRepository: SCMCalendarRepository new.
	self demoCalendarList: (SCMCalendarList createWith: self demoCalendarRepository)