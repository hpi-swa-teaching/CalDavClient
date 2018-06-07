calendar management
deleteSelectedCalendar
	
	self selectedCalendar = self defaultCalendar ifTrue: [  ^ self ].
	CALCalendar calendarDirectory deleteFileNamed: self selectedCalendar name.
	self calendars remove: self selectedCalendar.
	self 
		calendarIndex: self calendarIndex - 1;
		changed: #calendarNames;
		changed: #eventNames