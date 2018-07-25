toolbuilding
buildFullDayButton: aBuilder

	| height |
	
	height := (self lineHeight * 2) + (self spacing * 2).
	^ aBuilder pluggableActionButtonSpec new
		model: self;
		action: #switchFullDaySelected;
		label: #fullDayButtonLabel;
		enabled: self isReadOnly not;
		frame: (self borderLeft @ height corner: self borderRight @ (height + self lineHeight))