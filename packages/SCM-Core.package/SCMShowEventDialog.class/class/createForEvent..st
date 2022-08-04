initialization
createForEvent: aSCMEvent 

	^ self new
			calendarList: (SCMCalendarList createWith: (self createLocalRepositoryFor: aSCMEvent));
			load: aSCMEvent;
			yourself