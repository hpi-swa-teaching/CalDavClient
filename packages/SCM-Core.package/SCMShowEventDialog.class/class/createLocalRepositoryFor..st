initialization
createLocalRepositoryFor: aSCMEvent

	^ SCMCalendarRepository getBasic
			addCalendar: aSCMEvent calendar;
			yourself