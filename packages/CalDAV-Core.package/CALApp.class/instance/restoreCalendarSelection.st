calendar management
restoreCalendarSelection

	| file namesOfSelectedCalendars |
	
	(self class fileDirectory fileExists: self selectionFileName) ifFalse: [^ self].
	file := FileStream readOnlyFileNamed: (self class fileDirectory fullNameFor: self selectionFileName).
	namesOfSelectedCalendars := STON fromString: file contents.
	file close.
	1 to: self calendars size do: [ :each | 
		(namesOfSelectedCalendars includes: (self nameOfCalendarAt: each))
			ifTrue: [self showEventsForCalendar: each put: true]
			ifFalse: [self showEventsForCalendar: each put: false]]