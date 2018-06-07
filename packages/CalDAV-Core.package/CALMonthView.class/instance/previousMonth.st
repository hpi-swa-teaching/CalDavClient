as yet unclassified
previousMonth

	self firstOfMonth: (firstOfMonth addMonths: -1).
	self changed: #monthText.
	self fillMonth.
	self changed: #days
	