as yet unclassified
addCalendar: aSCMCalendar

	self calendars detect: [:each | each name = aSCMCalendar title] 
		ifNone: [self calendars add: aSCMCalendar. 
			self changed: #calendarsChanged.
			aSCMCalendar addDependent: self]