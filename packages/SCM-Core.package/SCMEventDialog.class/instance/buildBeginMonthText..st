toolbuilding
buildBeginMonthText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #beginMonth;
		editText: #updateBeginMonth:;
		color: #beginColor;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'Month';
		frame: (0.31 @ (self lineOffsetOf: 3) corner: 0.61 @ ((self lineOffsetOf: 3) + self lineHeight))