accessing
eventBeginMinute: aValue
	
	(aValue asNumber < 60 and: aValue asNumber >= 0) 
		ifTrue: [self event beginMinute: aValue asNumber].
	self updateBegin