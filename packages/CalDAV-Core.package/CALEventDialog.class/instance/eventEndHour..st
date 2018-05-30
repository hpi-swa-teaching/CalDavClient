accessing
eventEndHour: anObject
	
	(anObject asNumber < 24 and: anObject asNumber >= 0)
		ifTrue: [self event endHour: anObject asNumber].
	
	self updateEnd