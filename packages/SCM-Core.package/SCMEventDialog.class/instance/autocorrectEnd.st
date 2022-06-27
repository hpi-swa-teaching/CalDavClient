actions
autocorrectEnd

	self isBeginDateAndTimeValid ifFalse: [^ self].
	self areDatesValid ifFalse: [self end: (self begin + (Duration hours: 1))]