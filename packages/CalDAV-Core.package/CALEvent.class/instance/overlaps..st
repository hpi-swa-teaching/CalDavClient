comparing
overlaps: anEvent
	
	^ ((self begin < anEvent end) and: (self end > anEvent begin)) and:
	(self isFullDay = anEvent isFullDay)