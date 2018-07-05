initialize
initialize
	
	self 
		days: OrderedCollection new;
		firstOfMonth: (Date 
			year: Date today year 
			month: Date today monthIndex 
			day: 1)