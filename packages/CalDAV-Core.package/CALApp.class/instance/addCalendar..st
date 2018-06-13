calendar management
addCalendar: aCalendar
	
	self calendars detect: [:each | each name = aCalendar name] 
		ifNone: [self calendars add: aCalendar.
				self saveCalendar: aCalendar].
	self changed: #calendarNames
	