accessing
eventEndMonth: anObject
	(anObject asNumber <= 12 and: anObject asNumber >= 0)
		ifTrue: [self event endMonth: anObject asNumber].
	self changed: #eventEndMonth