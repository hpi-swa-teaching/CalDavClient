updating
updateBegin

	self fullDaySelected ifTrue: [self makeFullDay].
	self
		checkBeginHighlighting;
		reloadDates