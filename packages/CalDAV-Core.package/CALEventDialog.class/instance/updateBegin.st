actions
updateBegin

	self event autocorrectEnd.
	self isFullDaySelected ifTrue: [self event makeFullDay].
	self reloadDates