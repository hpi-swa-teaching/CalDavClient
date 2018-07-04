subwindows
clearView

	self isMonthViewActive ifTrue: [(self topView submorphNamed:'monthPanel') abandon].
	self isWeekViewActive ifTrue: [(self topView submorphNamed:'weekPanel') abandon].
	self changed: #isMonthViewActive.
	self changed: #isWeekViewActive