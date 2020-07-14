as yet unclassified
initialize
	
	super initialize.
	self class nDCal eventsDictionary isEmpty 
		ifFalse: [self eventsDictionary: (self class nDCal eventsDictionary).].