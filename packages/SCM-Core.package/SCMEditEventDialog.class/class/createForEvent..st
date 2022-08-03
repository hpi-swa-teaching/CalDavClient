initialize
createForEvent: aSCMEvent

	^ self new
			calendarList: (SCMCalendarList createWith: SCMCalendarRepository get);
			load: aSCMEvent;
			oldEvent: aSCMEvent;
			yourself