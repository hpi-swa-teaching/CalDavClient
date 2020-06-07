toolbuilding
buildBeginPickerButton: aBuilder

	| height |

	height := (self spacing * 3) + (self lineHeight * 3).
	^ aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'Pick Begin Date';
		action: #pickBeginDate;
		frame: (self borderLeft @ height corner: 0.2 @ (height + self lineHeight));
		enabled: self isReadOnly not.