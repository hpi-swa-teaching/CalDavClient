accessing
setUp

	self demoCalendarRepository: SCMCalendarRepository getDummy.
	self demoCalendarList: (SCMCalendarList createWith: self demoCalendarRepository)