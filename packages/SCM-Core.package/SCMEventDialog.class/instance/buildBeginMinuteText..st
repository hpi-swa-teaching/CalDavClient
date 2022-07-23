toolbuilder
buildBeginMinuteText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
			model: self;
			getText: #beginMinute;
			editText: #updateBeginMinute:;
			color: #beginFieldsColor;
			indicateUnacceptedChanges: false;
			readOnly: self isReadOnly; 
			help: self eventMinuteHelpText;
			frame: (0.79 @ (self lineOffsetOf: 3) 
				corner: self borderRight @ ((self lineOffsetOf: 3) + self lineHeight));
			yourself