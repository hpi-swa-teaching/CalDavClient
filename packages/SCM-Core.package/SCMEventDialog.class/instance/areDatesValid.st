accessing
areDatesValid  

	^ self isBeginDateValid and: 
		[self isEndDateValid 
			and: [self beginDate <= self endDate]]