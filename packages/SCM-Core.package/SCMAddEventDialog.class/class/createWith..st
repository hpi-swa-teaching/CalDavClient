initialization
createWith: aSCMCalendarRepository

	^ self new
			calendarList: (SCMCalendarList createWith: aSCMCalendarRepository);
			yourself