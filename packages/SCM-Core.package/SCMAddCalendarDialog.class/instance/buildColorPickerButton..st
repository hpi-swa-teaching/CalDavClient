toolbuilding
buildColorPickerButton: aBuilder

	^ aBuilder pluggableActionButtonSpec new
			model: self;
			label: 'Pick Color';
			color: #calendarColor;
			action: #pickColor;
			frame: (self borderLeft @ (self lineOffsetOf: 1) corner: self borderRight @ ((self lineOffsetOf: 2) + self lineHeight))