toolbuilder
buildBeginHourText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
			model: self;
			getText: #beginHour;
			editText: #updateBeginHour:;
			color: #beginFieldsColor;
			indicateUnacceptedChanges: false;
			readOnly: self isReadOnly; 
			help: self hourHelpText;
			frame: (0.73 @ (self lineOffsetOf: 3) 
				corner: 0.78 @ ((self lineOffsetOf: 3) + self lineHeight));
			yourself