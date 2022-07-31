toolbuilder
buildEndMinuteText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
			model: self;
			getText: #endMinute;
			editText: #updateEndMinute:;
			color: #endFieldsColor;
			indicateUnacceptedChanges: false;
			readOnly: self isReadOnly; 
			help: self minuteHelpText;
			frame: (0.79 @ (self lineOffsetOf: 4)
				corner: self borderRight @ ((self lineOffsetOf: 4) + self lineHeight));
			yourself