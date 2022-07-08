toolbuilding
buildBeginYearText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #beginYear;
		editText: #updateBeginYear:;
		color: #beginColor;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'Year';
		frame: (0.21 @ (self lineOffsetOf: 3) corner: 0.3 @ ((self lineOffsetOf: 3) + self lineHeight))