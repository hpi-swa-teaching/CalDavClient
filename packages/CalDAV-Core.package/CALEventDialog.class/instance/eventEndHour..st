accessing
eventEndHour: aValue
	
	(aValue asNumber < 24 and: aValue asNumber >= 0)
		ifTrue: [self event endHour: aValue asNumber].
	
	self updateEnd