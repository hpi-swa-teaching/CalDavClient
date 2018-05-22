accessing
eventEndDay: anObject
	self event beginDay: anObject asNumber.		
	self changed: #eventEndDay