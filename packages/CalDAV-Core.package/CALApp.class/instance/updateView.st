calendar management
updateView

	self isMonthViewActive ifTrue: [self monthPanel fillMonth].
	self isWeekViewActive ifTrue: [self weekPanel updateWeek]