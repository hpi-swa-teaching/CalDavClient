accessing
eventEndYear: anObject
	self event beginYear: anObject asNumber.
	self changed: #eventEndYear
	