toolbuilding
buildLocationInput: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventLocation;
		setText: #eventLocation:;
		help: 'Location';
		frame: (0.01@0.54 corner: self borderRight@0.64)