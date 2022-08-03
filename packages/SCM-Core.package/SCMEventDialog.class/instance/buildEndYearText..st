toolbuilder
buildEndYearText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
			model: self;
			getText: #endYear;
			editText: #updateEndYear:;
			color: #endFieldsColor;
			indicateUnacceptedChanges: false;
			readOnly: self isReadOnly; 
			help: self yearHelpText;
			frame: (0.21 @ (self lineOffsetOf: 4)
				corner: 0.3 @ ((self lineOffsetOf: 4) + self lineHeight));
			yourself