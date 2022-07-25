toolbuilder
buildBeginPickerButton: aBuilder

	^ aBuilder pluggableActionButtonSpec new
			model: self;
			label: self beginDatePickerLabelText;
			action: #pickBeginDateAndTime;
			frame: (self borderLeft @ (self lineOffsetOf: 3) 
				corner: 0.2 @ ((self lineOffsetOf: 3) + self lineHeight));
			enabled: self isReadOnly not;
			yourself