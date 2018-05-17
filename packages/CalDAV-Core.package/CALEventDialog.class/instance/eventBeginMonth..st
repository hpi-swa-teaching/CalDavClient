accessing
eventBeginMonth: anObject

	(anObject asNumber <= 12 and: anObject asNumber >= 0)
		ifTrue: [self event begin: (DateAndTime 
						year: self event begin year
						month: anObject asNumber 
						day: self event begin dayOfMonth
						hour: self event begin hours
						minute: self event begin minutes)].
					
	self changed: #eventBeginMonth""