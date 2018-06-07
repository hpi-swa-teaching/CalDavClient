as yet unclassified
previousMonth

	self firstOfMonth: (firstOfMonth onPreviousMonth).
	self changed: #monthText.
	self fillMonth.
	self changed: #days
	