accessing
eventBeginHour: aValue

	(aValue asNumber < 24 and: aValue asNumber >= 0)
		ifTrue: [self event beginHour: aValue asNumber].
	self updateBegin