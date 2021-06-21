comparing
overlaps: aCALEvent
	
	^ (self begin < aCALEvent end) 
		and: (self end > aCALEvent begin)
		and: (self isFullDay = aCALEvent isFullDay)