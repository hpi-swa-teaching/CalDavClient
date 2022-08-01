calendar management
addCalendar: aSCMCalendar

	self calendars detect: [:each | each = aSCMCalendar]
		ifFound: [:calendar | (aSCMCalendar isNewerThan: calendar)
			ifTrue: [self deleteCalendar: calendar.
				self addCalendarInternally: aSCMCalendar]]
		ifNone: [self addCalendarInternally: aSCMCalendar]