calendar management
deleteCalendar: aSCMCalendar

	self calendars remove: aSCMCalendar.
	aSCMCalendar delete.
	self changed: #calendarsChanged