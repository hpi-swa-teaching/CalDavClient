testing
testAccessors2
	| event |
	
	event := self demoEvent.
	
	self assert: (event beginYear = self begin year).
	self assert: (event endYear = self end year).
	self assert: (event beginMonth = self begin month).
	self assert: (event endMonth = self end month).
	self assert: (event beginDay = self begin dayOfMonth).
	self assert: (event endDay = self end dayOfMonth).
	self assert: (event beginHour = self begin hour).
	self assert: (event endHour = self end hour).
	self assert: (event beginMinute = self begin minutes).
	self assert: (event endMinute = self end minutes).