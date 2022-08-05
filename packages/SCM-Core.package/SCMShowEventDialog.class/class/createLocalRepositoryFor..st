initialization
createLocalRepositoryFor: aSCMEvent

	^ SCMCalendarRepository basicNew
			addCalendar: aSCMEvent calendar;
			yourself