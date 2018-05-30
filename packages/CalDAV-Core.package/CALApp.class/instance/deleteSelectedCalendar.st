calender
deleteSelectedCalendar
	
	|selectedCalendar|
	selectedCalendar := self selectedCalendar.
	self calendars remove: selectedCalendar.
	CALCalendar calendarDirectory deleteFileNamed: selectedCalendar name.
	self calendarIndex: self calendarIndex - 1.
	self changed: #calendarNames.
	self changed: #eventNames