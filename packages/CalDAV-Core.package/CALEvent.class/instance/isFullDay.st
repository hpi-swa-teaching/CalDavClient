validation
isFullDay

	^ self beginHour = 0 and: self beginMinute = 0 and: self endHour = 23 and: self endMinute = 59