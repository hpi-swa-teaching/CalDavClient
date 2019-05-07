accessing
previousDay
	
	self day: (self day subtractDays: 1).
	self updateDay