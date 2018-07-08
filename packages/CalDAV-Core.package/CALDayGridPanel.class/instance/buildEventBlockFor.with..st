as yet unclassified
buildEventBlockFor: anEvent with: aBuilder

	^ aBuilder pluggableActionButtonSpec new
		model: self;
		label: anEvent title;
		color: (self parent findCalendarFor: anEvent) color;
		frame: (self eventBlockFrame: anEvent)