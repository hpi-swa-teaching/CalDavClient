toolbuilding
buildEndPickerButton: aBuilder

	| height |

	height := (self spacing * 4) + (self lineHeight * 4).
	^ aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'Pick End Date';
		action: #pickEndDate;
		frame: (self borderLeft @ height corner: 0.2 @ (height + self lineHeight));
		enabled: self isReadOnly not.