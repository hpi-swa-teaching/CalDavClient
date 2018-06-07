as yet unclassified
nextMonth

	self firstOfMonth: (firstOfMonth onNextMonth).
	self changed: #monthText.
	self fillMonth.
	self changed: #days
	