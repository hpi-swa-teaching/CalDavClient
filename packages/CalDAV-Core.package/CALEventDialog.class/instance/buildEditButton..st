toolbuilding
buildEditButton: aBuilder

	| height |
	
	height := (self lineHeight * 7) + (self spacing * 7).
	^ aBuilder pluggableActionButtonSpec new
		model: self;
		action: #saveEvent;
		label: 'Save Event';
		frame: ((self borderRight / 2 + 0.01) @ height corner: self borderRight @ (height + self lineHeight));
		enabled: self isReadOnly not.