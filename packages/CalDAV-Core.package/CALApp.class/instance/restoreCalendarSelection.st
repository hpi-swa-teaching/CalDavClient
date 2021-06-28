calendar management
restoreCalendarSelection

	1 to: self calendars size do: [:each | 
		(self namesOfSelectedCalendars includes: (self nameOfCalendarAt: each))
			ifTrue: [self showEventsForCalendar: each put: true]
			ifFalse: [self showEventsForCalendar: each put: false]]