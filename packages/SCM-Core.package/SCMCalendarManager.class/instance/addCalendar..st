as yet unclassified
addCalendar: aSCMCalendar

	self basicCalendars detect: [:each | each name = aSCMCalendar name] 
		ifNone: [self basicCalendars add: aSCMCalendar.
				"self storeCalendar: aSCMCalendar"]