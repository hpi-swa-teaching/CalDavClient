as yet unclassified
buildDayLineNumber: aNumber with: aBuilder

	| x |
	
	x := self dayGridWidth * aNumber.
	^ aBuilder pluggableButtonSpec new
		model: self;
		enabled: false;
		label: (self startDay addDays: aNumber) weekday asString;
		frame: (x @ 0 corner: (x + self dayGridWidth) @ self dayLabelHeight);
		yourself