initialization
startDummy

	^ self new
			calendarRepository: SCMCalendarRepository getDummy;
			setUp;
			yourself