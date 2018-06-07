as yet unclassified
initialize
	
	self days: OrderedCollection new.
	self firstOfMonth: (Date year: Date today year month: Date today monthIndex day: 1).