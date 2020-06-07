calendar management
indexOfCalendarNamed: aName

	(self calendars includes: (self calendarNamed: aName))
		ifTrue: [^ self calendars indexOf: (self calendarNamed: aName)]
		ifFalse: [self error: 'there is no calendar named ', aName, ' in calendars collection']