as yet unclassified
addCalendar: aSCMCalendar

	self calendars detect: [:each | each name = aSCMCalendar name] 
		ifNone: [self calendars add: aSCMCalendar.
				"self storeCalendar: aSCMCalendar"]