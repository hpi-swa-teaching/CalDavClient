toolbuilding
buildLocationText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #location;
		editText: #location:;
		indicateUnacceptedChanges: false;
		help: 'Location';
		readOnly: self isReadOnly;
		frame: (0.21 @ (self lineOffsetOf: 5) corner: self borderRight @ ((self lineOffsetOf: 5) + self lineHeight))