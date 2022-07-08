actions
updateBegin

	self checkBeginHighlighting.
	self isFullDaySelected ifTrue: [self makeFullDay].
	self reloadDates