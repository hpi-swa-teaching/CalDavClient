initialization
createWith: aSCMCalendarRepository forEvent: aSCMEvent

	^ self new
			calendarList: (SCMCalendarList createWith: aSCMCalendarRepository);
			load: aSCMEvent;
			oldEvent: aSCMEvent;
			yourself