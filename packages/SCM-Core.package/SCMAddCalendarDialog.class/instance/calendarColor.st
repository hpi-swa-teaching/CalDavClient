accessing
calendarColor

	^ calendarColor ifNil: [calendarColor := self defaultCalendarColor]