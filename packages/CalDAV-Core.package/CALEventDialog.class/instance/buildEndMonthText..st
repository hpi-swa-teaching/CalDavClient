toolbuilding
buildEndMonthText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventEndMonth;
		editText: #eventEndMonth:;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'Month';
		frame: (0.31 @ (self lineOffsetOf: 4) corner: 0.61 @ ((self lineOffsetOf: 4) + self lineHeight))