running
setUp
	
	self app: CALApp new prepareCalendarsForTesting. 
	self eventGrid: (CALEventGridPanel new
		app: self app;
		day: Date today
		yourself)