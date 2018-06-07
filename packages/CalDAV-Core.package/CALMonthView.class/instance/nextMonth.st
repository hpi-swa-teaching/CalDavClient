as yet unclassified
nextMonth

	self firstOfMonth: (firstOfMonth addMonths: 1).
	self changed: #monthText.
	self fillMonth.
	self changed: #days
	