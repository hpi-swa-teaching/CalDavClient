toolbuilder
buildLocationText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
			model: self;
			getText: #location;
			editText: #location:;
			indicateUnacceptedChanges: false;
			help: self locationHelpText;
			readOnly: self isReadOnly;
			frame: (self borderLeft @ (self lineOffsetOf: 6)
				corner: self borderRight @ ((self lineOffsetOf: 6) + self lineHeight));
			yourself