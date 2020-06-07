calendar management
deleteSelectedCalendar
	
	| newIndex |
	
	self calendars size <= 1 ifTrue: [self error: 'You can not delete the last calendar'].
	self showEventsForCalendar: self calendarIndex put: false.
	self selectedCalendar calendarDirectory deleteFileNamed: self selectedCalendar name.
	self calendars remove: self selectedCalendar.
	self calendarIndex - 1 >= 1
		ifTrue: [newIndex := self calendarIndex - 1]
		ifFalse: [newIndex := 1].
	self 
		calendarIndex:  newIndex;
		updateView