ui
highlightDatesAndTimes

	self areDatesAndTimesValid
		ifFalse:
			[self beginFieldsColor: self defaultHighlightColor.
			self endFieldsColor: self defaultHighlightColor]