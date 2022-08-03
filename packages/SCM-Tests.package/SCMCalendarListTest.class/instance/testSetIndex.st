testing
testSetIndex

	| demoCalendar demoCalendar2 |
	
	demoCalendar := SCMCalendar newNamed: 'demoCalendar' withDefaultColor: Color green.
	demoCalendar2 := SCMCalendar newNamed: 'demoCalendar2' withDefaultColor: Color red.
	self demoCalendarRepository addCalendars: {demoCalendar . demoCalendar2} asOrderedCollection.
	
	self demoCalendarList setIndexForCalendar: demoCalendar.
	self assert: self demoCalendarList selectedEditableCalendar equals: demoCalendar.
	self demoCalendarList setIndexForCalendar: demoCalendar2.
	self assert: self demoCalendarList selectedEditableCalendar equals: demoCalendar2.
	
	demoCalendar	delete.
	demoCalendar2 delete.
		
	
	
	