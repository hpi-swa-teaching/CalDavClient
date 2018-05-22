accessing
eventBeginMonth: anObject

	(anObject asNumber <= 12 and: anObject asNumber >= 0)
		ifTrue: [self event beginMonth: anObject asNumber].
					
	self changed: #eventBeginMonth""