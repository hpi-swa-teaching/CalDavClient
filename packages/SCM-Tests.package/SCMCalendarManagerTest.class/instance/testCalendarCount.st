as yet unclassified
testCalendarCount

	self subject addCalendar: self demoCalendar.
	self subject addCalendar: self demoCalendar2.
	self subject addCalendar: self demoCalendar3.
	self assert: 3 equals: self subject calendarRepository size