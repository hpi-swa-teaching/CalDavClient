updating
updateBegin

	self isFullDaySelected ifTrue: [self makeFullDay].
	self
		checkBeginHighlighting;
		reloadDates