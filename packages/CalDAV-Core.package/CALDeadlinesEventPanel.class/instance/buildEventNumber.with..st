as yet unclassified
buildEventNumber: aNumber with: aBuilder
	| x |
	
	x := self dayGridWidth * aNumber.
	^ aBuilder pluggableButtonSpec new
		model: self;
		enabled: false;
		label: aNumber asString;
		frame: (0 @ 0 corner: 1@1);
		yourself