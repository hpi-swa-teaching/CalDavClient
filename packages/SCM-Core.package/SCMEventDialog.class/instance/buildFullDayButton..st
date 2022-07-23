toolbuilder
buildFullDayButton: aBuilder

	^ aBuilder pluggableActionButtonSpec new
			model: self;
			action: #switchFullDaySelected;
			label: #fullDayButtonLabel;
			enabled: self isReadOnly not;
			frame: (0.21 @ (self lineOffsetOf: 5)
				corner: self borderRight @ ((self lineOffsetOf: 5) + self lineHeight));
			yourself