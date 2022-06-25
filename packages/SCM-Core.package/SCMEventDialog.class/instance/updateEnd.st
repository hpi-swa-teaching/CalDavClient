actions
updateEnd

	self autocorrectBegin.
	self isFullDaySelected ifTrue: [self makeFullDay].
	self reloadDates