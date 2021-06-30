validation
isValid

	^ self isTitleValid 
		and: [self areDatesValid] 