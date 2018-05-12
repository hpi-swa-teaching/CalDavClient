toolbuilding
buildLocationText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventLocation;
		editText: #eventLocation:;
		indicateUnacceptedChanges: false;
		help: 'Location';
		readOnly: self isReadOnly;
		frame: (0.01@0.54 corner: self borderRight@0.64)