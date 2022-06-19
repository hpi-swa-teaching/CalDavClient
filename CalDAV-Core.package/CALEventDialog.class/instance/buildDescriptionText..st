toolbuilding
buildDescriptionText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventDescription;
		editText: #eventDescription:;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'Description';
		frame: (self borderLeft @ (self lineOffsetOf: 1) corner: self borderRight @ ((self lineOffsetOf: 1) + self lineHeight))