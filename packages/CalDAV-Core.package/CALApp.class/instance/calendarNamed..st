calendar management
calendarNamed: aName

	^ self calendars detect: [ :each | each name = aName] ifNone: [self error: 'There is no calendar named ', aName, 'in calendars collection']