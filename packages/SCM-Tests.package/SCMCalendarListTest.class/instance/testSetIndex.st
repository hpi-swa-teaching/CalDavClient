testing
testSetIndex

	| calendar1 calendar2 |
	
	calendar1 := SCMMockCalendar newNamed: 'demoCalendar' withDefaultColor: Color green.
	calendar2 := SCMMockCalendar newNamed: 'demoCalendar2' withDefaultColor: Color red.
	self calendarRepository addCalendars: {calendar1. calendar2} asOrderedCollection.
	
	self calendarList setIndexForCalendar: calendar1.
	self assert: self calendarList selectedEditableCalendar equals: calendar1.
	self calendarList setIndexForCalendar: calendar2.
	self assert: self calendarList selectedEditableCalendar equals: calendar2.
	
	calendar1 delete.
	calendar2 delete