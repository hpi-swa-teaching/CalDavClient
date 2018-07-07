toolbuilder
showEventsForCalendar: aCalendarIndex put: aBoolean

	aBoolean 
		ifTrue: [self calendarsToShow add: aCalendarIndex]
		ifFalse: [self calendarsToShow remove: aCalendarIndex ifAbsent: []].
	self updateView