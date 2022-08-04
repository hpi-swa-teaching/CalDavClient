testing
testSaveCalendar

	self dialog calendarTitle: ''.
	self dialog saveCalendar.
	self assert: self dialog titleColor equals: Color paleRed.
	
	self dialog calendarTitle: 'ABC'.
	self dialog saveCalendar.
	self deny: self dialog titleColor equals: Color paleRed