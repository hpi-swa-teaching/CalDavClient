accessing
eventBeginMinute: anObject
	
	(anObject asNumber < 60 and: anObject asNumber >= 0)
		ifTrue: [self event begin: (DateAndTime 
						year: self event begin year
						month: self event begin month
						day: self event begin dayOfMonth
						hour: self event begin hours
						minute: anObject asNumber)].
	
	self changed: #eventBeginMinute