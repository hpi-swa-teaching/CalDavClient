toolbuilding
buildBeginPickerButton: aBuilder

	^ aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'Pick Begin Date';
		action: #pickBeginDate;
		frame: (self borderLeft @ (self lineOffsetOf: 3) corner: 0.2 @ ((self lineOffsetOf: 3) + self lineHeight));
		enabled: self isReadOnly not