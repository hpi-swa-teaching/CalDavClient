calendar management
addCalendar: aCalendar

	self calendars detect: [:each | each name = aCalendar name] 
		ifNone: [self calendars add: aCalendar.
				self storeCalendar: aCalendar].
	self changed: #calendarNames
	