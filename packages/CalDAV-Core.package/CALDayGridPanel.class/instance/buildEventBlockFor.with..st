as yet unclassified
buildEventBlockFor: anEvent with: aBuilder
	^ aBuilder pluggableActionButtonSpec new
		model: self;
		label: anEvent title;
		frame: (self eventBlockFrame: anEvent)