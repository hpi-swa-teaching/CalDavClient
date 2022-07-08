accessing
isValid

	^ self isTitleValid 
		and: [self areDatesAndTimesValid] 