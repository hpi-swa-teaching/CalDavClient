validating
isValid

	^ self isValidTitle 
			and: [self areDatesAndTimesValid] 