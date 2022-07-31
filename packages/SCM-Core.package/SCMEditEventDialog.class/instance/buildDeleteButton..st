toolbuilder
buildDeleteButton: aBuilder

	^ aBuilder pluggableActionButtonSpec new
			model: self;
			action: #deleteOldEvent;
			label: self deleteLabelText;
			frame: (self borderLeft @ (self lineOffsetOf: 8)
				corner: (self borderRight / 2) @ ((self lineOffsetOf: 8) + self lineHeight));
			enabled: self isReadOnly not;
			yourself