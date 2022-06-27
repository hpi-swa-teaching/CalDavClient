actions
updateBegin

	self autocorrectEnd.
	self isFullDaySelected ifTrue: [self makeFullDay].
	self reloadDates