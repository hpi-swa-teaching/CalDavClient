ui
highlightDatesAndTimes

	self areDatesAndTimesValid ifFalse: [self endColor: self defaultHighlightColor.
		self beginColor: self defaultHighlightColor]