toolbuilder
buildEndHourText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
			model: self;
			getText: #endHour;
			editText: #updateEndHour:;
			color: #endFieldsColor;
			indicateUnacceptedChanges: false;
			readOnly: self isReadOnly; 
			help: self hourHelpText;
			frame: (0.73 @ (self lineOffsetOf: 4)
				corner: 0.78 @ ((self lineOffsetOf: 4) + self lineHeight));
			yourself