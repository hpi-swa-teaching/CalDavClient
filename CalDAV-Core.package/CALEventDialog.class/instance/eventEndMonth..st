accessing
eventEndMonth: aValue

	(aValue asNumber <= 12 and: [aValue asNumber >= 0])
		ifTrue: [self event endMonth: aValue asNumber].
	self updateEnd