accessing
eventBeginMonth: aValue

	(aValue asNumber <= 12 and: aValue asNumber >= 0)
		ifTrue: [self event beginMonth: aValue asNumber].
	self updateBegin