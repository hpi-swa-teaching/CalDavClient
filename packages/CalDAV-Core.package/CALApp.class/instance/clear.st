subwindows
clear

	self isMonthViewActive ifTrue: [(self topView submorphNamed: 'monthPanel') abandon].
	self isWeekViewActive ifTrue: [(self topView submorphNamed: 'weekPanel') abandon].
	self weekPanel myDependents: nil.
	self changed: #isMonthViewNotActive.
	self changed: #isWeekViewNotActive