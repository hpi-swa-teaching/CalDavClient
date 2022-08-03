toolbuilder
buildBeginDayText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
			model: self;
			getText: #beginDay;
			editText: #updateBeginDay:;
			color: #beginFieldsColor;
			indicateUnacceptedChanges: false;
			help: self dayHelpText;
			readOnly: self isReadOnly; 
			frame: (0.62 @ (self lineOffsetOf: 3) 
				corner: 0.72 @ ((self lineOffsetOf: 3) + self lineHeight));
			yourself