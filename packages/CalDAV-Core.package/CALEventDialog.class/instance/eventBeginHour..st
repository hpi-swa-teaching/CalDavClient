accessing
eventBeginHour: anObject

	(anObject asNumber < 24 and: anObject asNumber >= 0)
		ifTrue: [self event begin: (DateAndTime 
						year: self event begin year
						month: self event begin month
						day: self event begin dayOfMonth
						hour: anObject asNumber
						minute: self eventBeginMinute)].
					
	self changed: #eventBeginHour