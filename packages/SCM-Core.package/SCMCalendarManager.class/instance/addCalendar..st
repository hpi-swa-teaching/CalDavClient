as yet unclassified
addCalendar: aSCMCalendar

	self calendars detect: [:each | each name = aSCMCalendar myName] 
		ifNone: [self basicCalendars add: aSCMCalendar]