accessing
date: anObject
	
	date := anObject.
	self 
		changed: #eventNames;
		changed: #dateText.