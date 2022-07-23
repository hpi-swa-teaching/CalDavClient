validating
checkBeginHighlighting

	self
		beginFieldsColor: self defaultColor;
		endFieldsColor: self defaultColor.
	self isBeginDateAndTimeValid ifFalse: [^ self].
	self isEndDateAndTimeValid ifFalse: [^ self].
	(self begin >= self end)
		ifTrue: [self beginFieldsColor: self defaultHighlightColor]