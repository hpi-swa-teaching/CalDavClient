as yet unclassified
testInitialize

	| today | 
	today := DateAndTime today.
	
	self assert: today year equals: self defaultEvent begin year.
	self assert: today month equals: self defaultEvent begin month.
	self assert: today day equals: self defaultEvent begin day.
	self assert: today hour equals: self defaultEvent begin hour.
	self assert: today minute equals: self defaultEvent begin minute