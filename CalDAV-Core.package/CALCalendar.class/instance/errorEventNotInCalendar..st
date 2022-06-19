errors
errorEventNotInCalendar: aCALEvent

	^ (NotFound
			object: aCALEvent;
			messageText: 'Event to delete not in calendar') signal