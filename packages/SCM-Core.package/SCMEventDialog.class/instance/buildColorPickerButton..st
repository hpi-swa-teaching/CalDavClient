toolbuilder
buildColorPickerButton: aBuilder

	^ aBuilder pluggableActionButtonSpec new
			model: self;
			label: self colorPickerLabelText;
			color: #color;
			action: #pickColor;
			frame: (self borderLeft @ (self lineOffsetOf: 5) 
				corner: 0.2 @ ((self lineOffsetOf: 5) + self lineHeight));
			enabled: self isReadOnly not;
			yourself