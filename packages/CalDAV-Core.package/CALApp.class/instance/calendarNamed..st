calendar management
calendarNamed: aName

	^ self calendars detect: [ :each | each name = aName]