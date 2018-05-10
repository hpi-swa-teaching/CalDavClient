toolbuilding
buildSaveButton: aBuilder

	^ aBuilder pluggableActionButtonSpec new
		model: self;
		action: #saveEvent;
		label: 'Save Event';
		frame: (0.01@0.76 corner: self borderRight@0.86)