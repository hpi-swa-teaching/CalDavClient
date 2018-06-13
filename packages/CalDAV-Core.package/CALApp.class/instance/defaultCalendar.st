calendar management
defaultCalendar

	^ self calendars detect: [ :each | each name = self defaultCalendarName ]