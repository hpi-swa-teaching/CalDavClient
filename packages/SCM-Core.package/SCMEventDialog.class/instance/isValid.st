accessing
isValid

	^ self isTitleValid 
		and: [self areDatesValid] 