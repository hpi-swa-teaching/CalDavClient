accessing
eventEndMinute: anObject
	(anObject asNumber < 60 and: anObject asNumber >= 0)
		ifTrue: [self event beginMinute: anObject asNumber].
	self changed: #eventEndMinute