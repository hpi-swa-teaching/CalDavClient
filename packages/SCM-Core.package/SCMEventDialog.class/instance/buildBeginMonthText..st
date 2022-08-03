toolbuilder
buildBeginMonthText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
			model: self;
			getText: #beginMonth;
			editText: #updateBeginMonth:;
			color: #beginFieldsColor;
			indicateUnacceptedChanges: false;
			readOnly: self isReadOnly; 
			help: self monthHelpText;
			frame: (0.31 @ (self lineOffsetOf: 3) 
				corner: 0.61 @ ((self lineOffsetOf: 3) + self lineHeight));
			yourself