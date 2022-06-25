toolbuilding
buildBeginDayText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #beginDay;
		editText: #updateBeginDay:;
		indicateUnacceptedChanges: false;
		help: 'Day';
		readOnly: self isReadOnly; 
		frame: (0.62 @ (self lineOffsetOf: 3) corner: 0.72 @ ((self lineOffsetOf: 3) + self lineHeight))