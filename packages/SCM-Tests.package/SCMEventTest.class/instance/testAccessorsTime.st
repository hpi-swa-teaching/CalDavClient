as yet unclassified
testAccessorsTime

	| event |
	
	event := self pastEvent.
	
	self assert: (event begin year = self pastEventBegin year).
	self assert: (event end year = self pastEventEnd year).
	self assert: (event begin month = self pastEventBegin month).
	self assert: (event end month = self pastEventEnd month).
	self assert: (event begin dayOfMonth = self pastEventBegin dayOfMonth).
	self assert: (event end dayOfMonth = self pastEventEnd dayOfMonth).
	self assert: (event begin hour = self pastEventBegin hour).
	self assert: (event end hour = self pastEventEnd hour).
	self assert: (event begin minutes = self pastEventBegin minutes).
	self assert: (event end minutes = self pastEventEnd minutes)