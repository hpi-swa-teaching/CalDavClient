toolbuilding
buildEditButton: aBuilder

	^ aBuilder pluggableActionButtonSpec new
		model: self;
		action: #saveEvent;
		label: 'Save Event';
		frame: ((self borderRight / 2 + 0.01) @ (self lineOffsetOf: 7) corner: self borderRight @ ((self lineOffsetOf: 7) + self lineHeight));
		enabled: self isReadOnly not