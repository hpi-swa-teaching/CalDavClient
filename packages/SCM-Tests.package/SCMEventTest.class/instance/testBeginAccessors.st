as yet unclassified
testBeginAccessors

	| event |
	
	event := self demoEvent.
		
	self assert: (event begin  = self begin).
	event begin: (DateAndTime
			year: 2020
			month: 6
			day: 5
			hour:	2
			minute: 55).
	self assert: (event begin dayOfMonth = 5).
	self assert: (event begin month = 6).
	self assert: (event begin year = 2020).
	self assert: (event begin hour = 2).
	self assert: (event begin minute = 55)