as yet unclassified
changeMonthTo: aDate
	
	self firstOfMonth: (Date year: aDate year month: aDate monthIndex day: 1). 
	self changed: #monthText.
	self fillMonth.
	self changed: #days
	
	