toolbuilding
buildTitleText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		color: #titleColor;
		textColor: #titleTextColor; 
		getText: #title;
		editText: #title:;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'Title';
		frame: (self borderLeft @ self spacing corner: self borderRight @ self lineHeight)