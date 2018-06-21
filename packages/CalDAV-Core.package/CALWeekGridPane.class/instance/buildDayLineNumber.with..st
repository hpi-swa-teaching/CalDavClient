as yet unclassified
buildDayLineNumber: aNumber with: aBuilder

	| x |
	
	x := self dayGridWidth * aNumber.
	^ 	aBuilder pluggableTextSpec new
		model: self;
		readOnly: true;
		indicateUnacceptedChanges: false;
		help: (self startDay addDays: aNumber) weekday asString;
		frame: (x @ 0 corner: (x + self dayGridWidth) @ self dayLabelHeight)	