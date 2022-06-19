validation
areDatesValid  

	^ (self isBeginDateValid) and: [self isEndDateValid] and: [self begin < self end]