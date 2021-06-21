accessing
eventEndMinute: aValue

	(aValue asNumber < 60 and: aValue asNumber >= 0)
		ifTrue: [self event endMinute: aValue asNumber].
	self updateEnd