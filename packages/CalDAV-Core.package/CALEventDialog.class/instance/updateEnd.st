actions
updateEnd

	self event autocorrectBegin.
	self isFullDaySelected ifTrue: [self event makeFullDay].
	self reloadDates