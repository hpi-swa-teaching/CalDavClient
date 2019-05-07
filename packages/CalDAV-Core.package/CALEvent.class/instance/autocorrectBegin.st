validation
autocorrectBegin

	self isEndDateValid ifFalse: [^ self].
	self areDatesValid ifFalse: [self begin: (self end - (Duration hours: 1))]