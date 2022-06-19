toolbuilding
buildSaveButton: aBuilder

	^ aBuilder pluggableActionButtonSpec new
		model: self;
		action: #saveEvent;
		label: 'Save Event';
		frame: (self borderLeft @ (self lineOffsetOf: 7) corner: self borderRight @ ((self lineOffsetOf: 7) + self lineHeight))