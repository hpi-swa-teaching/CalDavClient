as yet unclassified
buildDayLineNumber: aNumber with: aBuilder

	| x |
	
	x := self timeLabelWidth + (self dayGridWidth * aNumber).
	^ 	aBuilder pluggableTextSpec new
		model: self;
		readOnly: true;
		indicateUnacceptedChanges: false;
		help: (self day addDays: aNumber) weekday asString;
		frame: (x @ self buttonHeight corner: x + self dayGridWidth @ (self dayLabelHeight + self buttonHeight) )	