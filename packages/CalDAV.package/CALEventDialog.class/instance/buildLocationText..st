toolbuilding
buildLocationText: aBuilder

	| height |
	
	height := (self lineHeight * 5) + (self spacing * 5).
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventLocation;
		editText: #eventLocation:;
		indicateUnacceptedChanges: false;
		help: 'Location';
		readOnly: self isReadOnly;
		frame: (0.01 @ height corner: self borderRight @ (height + self lineHeight))