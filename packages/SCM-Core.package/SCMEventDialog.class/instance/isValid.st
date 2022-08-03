validating
isValid

	^ self isTitleValid 
			and: [self areDatesAndTimesValid] 