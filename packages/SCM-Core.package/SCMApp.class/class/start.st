initialization
start

	^ self new
			calendarRepository: SCMCalendarRepository get;
			setUp;
			yourself