as yet unclassified
buildEventBlockFor: anEvent

	^ CALEventBlock new
		event: anEvent;
		color: (self parent findCalendarFor: anEvent) color