toolbuilding
buildFullDayButton: aBuilder

	^ aBuilder pluggableActionButtonSpec new
		model: self;
		action: #switchFullDaySelected;
		label: #fullDayButtonLabel;
		enabled: self isReadOnly not;
		frame: (self borderLeft @ (self lineOffsetOf: 2) corner: self borderRight @ ((self lineOffsetOf: 2) + self lineHeight))