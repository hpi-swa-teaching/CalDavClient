calendar management
addCalendar: aSCMCalendar

	self calendars detect: [:each | each = aSCMCalendar] 
		ifFound: [:calendar | (aSCMCalendar isOlderThan: calendar) 
			ifTrue: [^ self]
			ifFalse: [self deleteCalendar: calendar]].
	
	self calendars add: aSCMCalendar. 
	self changed: #calendarsChanged.
	aSCMCalendar addDependent: self