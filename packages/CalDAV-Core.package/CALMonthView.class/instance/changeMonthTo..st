accessing
changeMonthTo: aDate
	
	self
		firstOfMonth: (Date year: aDate year month: aDate monthIndex day: 1);
		changed: #monthText;
		fillMonth;
		changed: #days
	
	