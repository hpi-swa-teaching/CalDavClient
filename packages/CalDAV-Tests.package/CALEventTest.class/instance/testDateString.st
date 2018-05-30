testing
testDateString
	| event |
	event := self demoEvent.
	self assert: (event dateString = '24.12.2018')