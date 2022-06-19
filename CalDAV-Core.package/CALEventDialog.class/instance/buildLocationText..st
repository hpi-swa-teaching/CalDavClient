toolbuilding
buildLocationText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventLocation;
		editText: #eventLocation:;
		indicateUnacceptedChanges: false;
		help: 'Location';
		readOnly: self isReadOnly;
		frame: (0.01 @ (self lineOffsetOf: 5) corner: self borderRight @ ((self lineOffsetOf: 5) + self lineHeight))