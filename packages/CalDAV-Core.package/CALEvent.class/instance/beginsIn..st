validation
beginsIn: aDate

	^ self beginYear = aDate year 
		and: [self beginMonth = aDate monthIndex] 
		and: [self beginDay = aDate dayOfMonth]