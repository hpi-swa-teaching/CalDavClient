toolbuilder
buildLocationText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #location;
		editText: #location:;
		indicateUnacceptedChanges: false;
		help: 'Location';
		readOnly: self isReadOnly;
		frame: (0.01 @ (self lineOffsetOf: 6) corner: self borderRight @ ((self lineOffsetOf: 6) + self lineHeight))