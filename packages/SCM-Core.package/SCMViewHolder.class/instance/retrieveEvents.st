loading
retrieveEvents
		
	^ self calendarRepository
			activeEventsWithin: (self currentViewClass timespanFor: self selectedDate)