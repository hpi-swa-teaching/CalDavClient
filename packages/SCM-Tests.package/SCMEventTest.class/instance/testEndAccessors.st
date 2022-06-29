as yet unclassified
testEndAccessors

	| event |
	
	event := self pastEvent.
		
	self assert: (event end  = self pastEventEnd).
	event end: (DateAndTime
			year: 2020
			month: 6
			day: 5
			hour:	2
			minute: 55).
	self assert: (event end dayOfMonth = 5).
	self assert: (event end month = 6).
	self assert: (event end year = 2020).
	self assert: (event end hour = 2).
	self assert: (event end minute = 55)