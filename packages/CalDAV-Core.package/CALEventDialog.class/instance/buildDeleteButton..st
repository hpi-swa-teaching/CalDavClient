toolbuilding
buildDeleteButton: aBuilder

	| height |

	height := (self spacing * 7) + (self lineHeight * 7).
	^ aBuilder pluggableActionButtonSpec new
		model: self;
		action: #deleteEvent;
		label: 'Delete Event';
		frame: (self borderLeft @ height corner: (self borderRight / 2) @ (height + self lineHeight));
		enabled: self isReadOnly not.