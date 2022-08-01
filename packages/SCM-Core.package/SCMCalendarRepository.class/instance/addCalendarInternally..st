calendar management
addCalendarInternally: aSCMCalendar

	self calendars add: aSCMCalendar. 
	self changed: #calendarsChanged.
	aSCMCalendar addDependent: self