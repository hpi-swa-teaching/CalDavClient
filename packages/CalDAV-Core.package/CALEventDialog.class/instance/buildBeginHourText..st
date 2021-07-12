toolbuilding
buildBeginHourText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventBeginHour;
		editText: #eventBeginHour:;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'hh';
		frame: (0.73 @ (self lineOffsetOf: 3) corner: 0.78 @ ((self lineOffsetOf: 3) + self lineHeight))