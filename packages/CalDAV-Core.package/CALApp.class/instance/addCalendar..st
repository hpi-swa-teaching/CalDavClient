calendar management
addCalendar: aCALCalendar

	self calendars detect: [:each | each name = aCALCalendar name] 
		ifNone: [self calendars add: aCALCalendar.
				self storeCalendar: aCALCalendar].
	self changed: #calendarNames
	