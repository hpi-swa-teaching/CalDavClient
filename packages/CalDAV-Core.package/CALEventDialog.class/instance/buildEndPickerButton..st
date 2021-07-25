toolbuilding
buildEndPickerButton: aBuilder

	^ aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'Pick End Date';
		action: #pickEndDate;
		frame: (self borderLeft @ (self lineOffsetOf: 4) corner: 0.2 @ ((self lineOffsetOf: 4) + self lineHeight));
		enabled: self isReadOnly not