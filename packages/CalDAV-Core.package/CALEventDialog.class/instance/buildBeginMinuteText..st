toolbuilding
buildBeginMinuteText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventBeginMinute;
		editText: #eventBeginMinute:;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'mm';
		frame: (0.79 @ (self lineOffsetOf: 3) corner: self borderRight @ ((self lineOffsetOf: 3) + self lineHeight))