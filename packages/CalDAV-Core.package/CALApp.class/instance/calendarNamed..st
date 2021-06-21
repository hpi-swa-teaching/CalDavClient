calendar management
calendarNamed: aString

	^ self calendars detect: [ :each | each name = aString] ifNone: [self error: 'There is no calendar named ', aString, ' in calendars collection']