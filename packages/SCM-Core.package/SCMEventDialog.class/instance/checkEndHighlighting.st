validating
checkEndHighlighting

	self
		beginFieldsColor: self defaultColor;
		endFieldsColor: self defaultColor.
	self isBeginDateAndTimeValid ifFalse: [^ self].
	self isEndDateAndTimeValid ifFalse: [^ self].
	(self begin >= self end)
		ifTrue: [self endFieldsColor: self defaultHighlightColor]