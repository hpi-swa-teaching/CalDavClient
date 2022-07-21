toolbuilder
buildSubmitButton: aBuilder

	^ aBuilder pluggableActionButtonSpec new
		model: self;
		action: #saveCalendar;
		label: self submitButtonLabelText;
		frame: (self borderLeft @ (self lineOffsetOf: 3) 
			corner: self borderRight @ ((self lineOffsetOf: 4) + self lineHeight));
		yourself