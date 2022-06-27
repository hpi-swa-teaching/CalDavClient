accessing
isTitleValid

	^ (self title isNil not) 
		and: [self title ~= '']