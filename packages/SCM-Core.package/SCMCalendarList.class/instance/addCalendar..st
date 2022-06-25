calendar actions
addCalendar: aSCMCalendar

	self calendarRepository detect: [:each | each name = aSCMCalendar title] 
		ifNone: [self basicCalendars add: aSCMCalendar. self changed: #editableCalendarNames]