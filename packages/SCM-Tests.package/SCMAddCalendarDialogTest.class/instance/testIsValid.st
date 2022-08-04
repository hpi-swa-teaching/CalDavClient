testing
testIsValid

	self dialog calendarTitle: ''.
	self assert: self dialog isValid not.
	
	self dialog calendarTitle: 'ABC'.
	self assert: self dialog isValid