accessing
areDatesValid  

	^ self isBeginDateAndTimeValid and: 
		[self isEndDateAndTimeValid 
		and: [self begin < self end]]