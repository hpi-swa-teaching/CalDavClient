actions
updateEnd

	self checkEndHighlighting.
	self isFullDaySelected ifTrue: [self makeFullDay].
	self reloadDates