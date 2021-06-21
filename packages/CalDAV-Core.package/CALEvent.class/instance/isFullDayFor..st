validation
isFullDayFor: aDate

	^ (self beginYear < aDate year 
			or: self beginMonth < aDate monthIndex 
			or: self beginDay < aDate dayOfMonth 
			or: (self beginHour = 0 
				and: self beginMinute = 0)) 
		and: (self endYear > aDate year 
			or: self endMonth > aDate monthIndex 
			or: self endDay > aDate dayOfMonth 
			or: (self endHour = 23
				and: self endMinute = 59))