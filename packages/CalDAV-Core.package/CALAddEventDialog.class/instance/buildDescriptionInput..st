toolbuilding
buildDescriptionInput: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventDescription;
		editText: #eventDescription:;
		indicateUnacceptedChanges: false;
		help: 'Description';
		frame: (0.01@0.11 corner: self borderRight@0.31)