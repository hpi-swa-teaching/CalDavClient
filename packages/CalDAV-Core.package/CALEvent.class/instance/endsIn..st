validation
endsIn: aDate

	^ self endYear = aDate year 
		and: [self endMonth = aDate monthIndex] 
		and: [self endDay = aDate dayOfMonth]