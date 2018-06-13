as yet unclassified
buildEventBlockFor: anEvent with: aBuilder

	^  aBuilder pluggableActionButtonSpec new
		model: self;
		label: anEvent title;
		frame: ((0.1 @ (self yPositionFor: anEvent begin)) corner: (0.5 @ (self yPositionFor: 		anEvent end)))