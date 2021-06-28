calendar management
indexOfCalendarNamed: aString

	(self calendars includes: (self calendarNamed: aString))
		ifTrue: [^ self calendars indexOf: (self calendarNamed: aString)]
		ifFalse: [self error: 'There is no calendar named ', aString, ' in calendars collection']