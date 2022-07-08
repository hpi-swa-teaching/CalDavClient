toolbuilding
buildEndMonthText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #endMonth;
		editText: #updateEndMonth:;
		color: #endColor;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'Month';
		frame: (0.31 @ (self lineOffsetOf: 4) corner: 0.61 @ ((self lineOffsetOf: 4) + self lineHeight))