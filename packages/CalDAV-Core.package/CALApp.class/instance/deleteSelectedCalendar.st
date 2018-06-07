calendar management
deleteSelectedCalendar
	
	|selectedCalendar|
	selectedCalendar := self selectedCalendar.
	selectedCalendar = self defaultCalendar ifTrue: [^self].
	CALCalendar calendarDirectory deleteFileNamed: selectedCalendar name.
	self calendars remove: selectedCalendar.
	self calendarIndex: self calendarIndex - 1.
	self changed: #calendarNames.
	self changed: #eventNames