toolbuilder
buildTitleText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
			model: self;
			color: #titleColor;
			textColor: #titleTextColor; 
			getText: #title;
			editText: #title:;
			indicateUnacceptedChanges: false;
			readOnly: self isReadOnly; 
			help: self titleHelpText;
			frame: (self borderLeft @ self spacing
				corner: self borderRight @ self lineHeight);
			yourself