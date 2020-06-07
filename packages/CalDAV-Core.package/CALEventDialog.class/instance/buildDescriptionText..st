toolbuilding
buildDescriptionText: aBuilder

	| height |
	
	height := self lineHeight + self spacing.
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventDescription;
		editText: #eventDescription:;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'Description';
		frame: (self borderLeft @ height corner: self borderRight @ (height + self lineHeight))