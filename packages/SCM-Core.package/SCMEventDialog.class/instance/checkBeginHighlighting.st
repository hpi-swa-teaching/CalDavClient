validating
checkBeginHighlighting

	self beginColor: self defaultColor.
	self endColor: self defaultColor.
	self isBeginDateAndTimeValid ifFalse: [^ self].
	self isEndDateAndTimeValid ifFalse: [^ self].
	(self begin >= self end) ifTrue: [self beginColor: self defaultHighlightColor]