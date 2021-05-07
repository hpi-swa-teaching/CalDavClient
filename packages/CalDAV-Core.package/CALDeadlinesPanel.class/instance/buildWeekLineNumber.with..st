as yet unclassified
buildWeekLineNumber: aNumber with: aBuilder

	| y |
	
	y := self weekGridHeight * aNumber.
	^ aBuilder pluggableButtonSpec new
		model: self;
		enabled: false;
		label: y asString;
		frame: (0 @ y corner: self weekLabelWidth @ (y+ self weekGridHeight));
		yourself