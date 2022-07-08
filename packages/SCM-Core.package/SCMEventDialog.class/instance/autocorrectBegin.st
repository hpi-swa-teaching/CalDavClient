actions
autocorrectBegin

	self isEndDateValid ifFalse: [^ self].
	self areDatesValid ifFalse: [self beginDate: self endDate].
	self isEndDateAndTimeValid ifFalse: [^ self].
	self areDatesAndTimesValid ifFalse: [self begin: (self end - (Duration hours: 1))]