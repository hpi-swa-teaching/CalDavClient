as yet unclassified
deleteCalendar: aSCMCalendar

	self calendars detect: [:calendar | calendar = aSCMCalendar]
	ifFound: [:calendar | 
		self calendars remove: calendar.
		calendar delete]