initialize
initialize 

	super initialize.
	self event: (CALEvent new
					begin: Date today start;
					end: Date today start;
					yourself)