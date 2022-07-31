updating
updateEnd

	self fullDaySelected ifTrue: [self makeFullDay].
	self
		checkEndHighlighting;
		reloadDates