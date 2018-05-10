testing
testDateString
	| event |
	event := self createEvent.
	self assert: (event dateString = '24.12.2018')