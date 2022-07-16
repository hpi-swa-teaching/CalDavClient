as yet unclassified
deleteCalendar: aSCMCalendar

	self calendars remove: aSCMCalendar.
	aSCMCalendar delete.
	self changed: #calendarsChanged