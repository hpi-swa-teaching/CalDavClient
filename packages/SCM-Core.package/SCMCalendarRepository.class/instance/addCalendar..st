calendar management
addCalendar: aSCMCalendar

	self calendars detect: [:each | each = aSCMCalendar] 
		ifFound: [:calendar | (aSCMCalendar isNewerThan: calendar) 
			ifTrue: [self deleteCalendar: calendar. 
				self calendars add: aSCMCalendar. 
				self changed: #calendarsChanged.
				aSCMCalendar addDependent: self ] ]
		ifNone: [self calendars add: aSCMCalendar. 
			self changed: #calendarsChanged.
			aSCMCalendar addDependent: self]