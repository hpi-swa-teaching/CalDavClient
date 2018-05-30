testing
testTimeString
	| event |
	event := self demoEvent.
	self assert: (event timeString = '17:09')