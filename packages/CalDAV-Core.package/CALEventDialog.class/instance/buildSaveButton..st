toolbuilding
buildSaveButton: aBuilder

	| height |

	height := (self spacing * 7) + (self lineHeight * 7).
	^ aBuilder pluggableActionButtonSpec new
		model: self;
		action: #saveEvent;
		label: 'Save Event';
		frame: (self borderLeft @ height corner: self borderRight @ (height + self lineHeight)).