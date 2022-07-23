updating
updateEnd

	self isFullDaySelected ifTrue: [self makeFullDay].
	self
		checkEndHighlighting;
		reloadDates