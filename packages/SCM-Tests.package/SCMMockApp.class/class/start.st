initialization
start

	^ self new
			calendarRepository: SCMMockCalendarRepository get;
			setUp;
			yourself