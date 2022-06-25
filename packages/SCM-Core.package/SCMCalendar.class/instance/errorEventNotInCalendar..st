accessing
errorEventNotInCalendar: aSCMEvent

	^ (NotFound
			object: aSCMEvent;
			messageText: 'Event to delete not in calendar') signal