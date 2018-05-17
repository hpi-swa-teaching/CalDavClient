accessing
eventBeginDay: anObject

	(anObject asNumber <= self event begin daysInMonth and: anObject asNumber >= 0)
		ifTrue: [self event begin: (DateAndTime 
						year: self event begin year
						month: self event begin month
						day: anObject asNumber
						hour: self event begin hour
						minute: self event begin minute)].
					
	self changed: #eventBeginDay