errors
errorEventNotInCalendar: anEvent

	^ (NotFound
			object: anEvent;
			messageText: 'Event to delete not in calendar') signal