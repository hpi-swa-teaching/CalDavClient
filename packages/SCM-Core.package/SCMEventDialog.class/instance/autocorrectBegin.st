actions
autocorrectBegin

	self isEndDateAndTimeValid ifFalse: [^ self].
	self areDatesValid ifFalse: [self begin: (self end - (Duration hours: 1))]