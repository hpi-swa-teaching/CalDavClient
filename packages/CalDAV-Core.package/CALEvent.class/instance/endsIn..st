validation
endsIn: aDay

	^ self endYear = aDay year 
	and: self endMonth = aDay monthIndex 
	and: self endDay = aDay dayOfMonth