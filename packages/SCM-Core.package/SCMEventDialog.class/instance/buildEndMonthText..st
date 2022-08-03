toolbuilder
buildEndMonthText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
			model: self;
			getText: #endMonth;
			editText: #updateEndMonth:;
			color: #endFieldsColor;
			indicateUnacceptedChanges: false;
			readOnly: self isReadOnly; 
			help: self monthHelpText;
			frame: (0.31 @ (self lineOffsetOf: 4)
				corner: 0.61 @ ((self lineOffsetOf: 4) + self lineHeight));
			yourself