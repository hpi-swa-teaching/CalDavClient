toolbuilding
buildEndHourText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventEndHour;
		editText: #eventEndHour:;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'hh';
		frame: (0.73 @ (self lineOffsetOf: 4) corner: 0.78 @ ((self lineOffsetOf: 4) + self lineHeight))