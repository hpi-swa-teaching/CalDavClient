toolbuilding
buildBeginMonthText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventBeginMonth;
		editText: #eventBeginMonth:;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'Month';
		frame: (0.31 @ (self lineOffsetOf: 3) corner: 0.61 @ ((self lineOffsetOf: 3) + self lineHeight))