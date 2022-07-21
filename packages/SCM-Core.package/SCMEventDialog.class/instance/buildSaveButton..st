toolbuilder
buildSaveButton: aBuilder

	^ aBuilder pluggableActionButtonSpec new
		model: self;
		action: #saveEvent;
		label: 'Save Event';
		frame: (self borderLeft @ (self lineOffsetOf: 8) corner: self borderRight @ (1 - self spacing));
		yourself