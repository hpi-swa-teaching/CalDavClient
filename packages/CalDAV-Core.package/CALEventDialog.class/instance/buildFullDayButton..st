toolbuilding
buildFullDayButton: aBuilder

	^ aBuilder pluggableActionButtonSpec new
		model: self;
		action: #switchFullDaySelected;
		label: #fullDayButtonLabel;
		frame: (self borderLeft@0.22 corner: self borderRight@0.32)