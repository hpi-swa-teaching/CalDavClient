validation
isFullDayfor: aDay

	^ (self beginYear < aDay year or: self beginMonth < aDay monthIndex or: self beginDay < aDay dayOfMonth or: (self beginHour = 0 and: self beginMinute = 0)) 
		and: (self endYear > aDay year or: self endMonth > aDay monthIndex or: self endDay > aDay dayOfMonth or: (self endHour = 23 and: self endMinute = 59))