testing
testTimeString
	| event |
	event := self createEvent.
	self assert: (event timeString = '17:30')