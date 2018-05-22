accessing
eventBeginHour: anObject

	(anObject asNumber < 24 and: anObject asNumber >= 0)
		ifTrue: [self event beginHour: anObject asNumber].
					
	self changed: #eventBeginHour