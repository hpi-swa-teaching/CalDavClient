as yet unclassified
initialize
	
	super initialize.
	"self url: SCSabreButton sabreClient url."
	"self class nDCal eventsDictionary isEmpty 
		ifFalse: [self eventsDictionary: (self class nDCal eventsDictionary).]."