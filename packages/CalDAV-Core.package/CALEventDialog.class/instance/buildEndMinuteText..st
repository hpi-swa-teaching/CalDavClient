toolbuilding
buildEndMinuteText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventEndMinute;
		editText: #eventEndMinute:;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'mm';
		frame: (0.79 @ (self lineOffsetOf: 4) corner: self borderRight @ ((self lineOffsetOf: 4) + self lineHeight))