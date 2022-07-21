toolbuilder
buildEndDayText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #endDay;
		editText: #updateEndDay:;
		color: #endColor;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'Day';
		frame: (0.62 @ (self lineOffsetOf: 4) corner: 0.72 @ ((self lineOffsetOf: 4) + self lineHeight))