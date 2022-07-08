actions
autocorrectEnd

	self isBeginDateValid ifFalse: [^ self].
	self areDatesValid ifFalse: [self endDate: self beginDate].
	self isBeginDateAndTimeValid ifFalse: [^ self].
	self areDatesAndTimesValid ifFalse: [self end: (self begin + (Duration hours: 1))]