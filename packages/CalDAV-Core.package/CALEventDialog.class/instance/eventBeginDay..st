accessing
eventBeginDay: anObject

	self event beginDay: anObject asNumber.
					
	self changed: #eventBeginDay