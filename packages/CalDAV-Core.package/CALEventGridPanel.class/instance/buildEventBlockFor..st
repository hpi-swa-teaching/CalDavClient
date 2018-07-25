as yet unclassified
buildEventBlockFor: anEvent

	^ CALEventBlock new
		app: self app;
		event: anEvent;
		color: (self app findCalendarFor: anEvent) color