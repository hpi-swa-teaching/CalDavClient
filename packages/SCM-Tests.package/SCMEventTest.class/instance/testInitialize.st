as yet unclassified
testInitialize

	| today | 
	
	today := DateAndTime today.
	self assert: today year equals: self todayEvent begin year.
	self assert: today month equals: self todayEvent begin month.
	self assert: today day equals: self todayEvent begin day.
	self assert: today hour equals: self todayEvent begin hour.
	self assert: today minute equals: self todayEvent begin minute