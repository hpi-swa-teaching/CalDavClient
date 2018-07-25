event block layouting
getEventBlockFor: anEvent

	^ CALEventBlock new
		app: self app;
		event: anEvent;
		color: (self app findCalendarFor: anEvent) color