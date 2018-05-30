calender
addCalendar: aCalendar
	
	self calendars detect: [:calender | calender name = aCalendar name] 
		ifNone: [self calendars add: aCalendar.
				self saveCalendar: aCalendar].
	self changed: #calendarNames
	