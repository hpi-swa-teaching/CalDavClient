as yet unclassified
autocorrectEnd

	self isBeginDateValid ifFalse: [^ self].
	self areDatesValid ifFalse: [self end: (self begin + (Duration hours: 1))]