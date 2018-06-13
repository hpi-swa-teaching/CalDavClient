accessing
initialize
	
	self day: Date today.
	self day start: (self day start offset: DateAndTime localOffset)