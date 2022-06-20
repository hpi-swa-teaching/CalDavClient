as yet unclassified
testAccessorsTime

	| event |
	
	event := self demoEvent.
	
	self assert: (event begin year = self begin year).
	self assert: (event end year = self end year).
	self assert: (event begin month = self begin month).
	self assert: (event end month = self end month).
	self assert: (event begin dayOfMonth = self begin dayOfMonth).
	self assert: (event end dayOfMonth = self end dayOfMonth).
	self assert: (event begin hour = self begin hour).
	self assert: (event end hour = self end hour).
	self assert: (event begin minutes = self begin minutes).
	self assert: (event end minutes = self end minutes)