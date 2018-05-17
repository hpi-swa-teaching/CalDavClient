accessing
eventBeginYear: anObject
	
	(anObject asNumber < 10000 and: anObject asNumber >= 0)
		ifTrue: [self event begin: (DateAndTime 
						year: anObject asNumber 
						month: self event begin month
						day: self event begin dayOfMonth
						hour: self event begin hour
						minute: self eventBeginMinute)].
	
	self changed: #eventBeginYear