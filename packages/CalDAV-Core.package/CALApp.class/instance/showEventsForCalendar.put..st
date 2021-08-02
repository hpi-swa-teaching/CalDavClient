event management
showEventsForCalendar: aCalendarIndex put: aBoolean

	| calendarName |
	
	calendarName := self nameOfCalendarAt: aCalendarIndex.
	(aBoolean and: [(self calendarsToShow includes: calendarName) not])
		ifTrue: [self calendarsToShow add: calendarName ]
		ifFalse: [self calendarsToShow 
			remove: calendarName 
			ifAbsent: []].
	self storeCalendarSelection.
	self updateView