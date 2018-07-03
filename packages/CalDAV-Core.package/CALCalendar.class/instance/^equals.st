errors
= aCalendar

	^ ((self events = aCalendar events) and: (self name = aCalendar name))