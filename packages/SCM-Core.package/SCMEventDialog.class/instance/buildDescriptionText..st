toolbuilder
buildDescriptionText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
			model: self;
			getText: #description;
			editText: #description:;
			indicateUnacceptedChanges: false;
			readOnly: self isReadOnly; 
			help: self descriptionHelpText;
			frame: (self borderLeft @ (self lineOffsetOf: 1)
				corner: self borderRight @ ((self lineOffsetOf: 1) + self lineHeight));
			yourself