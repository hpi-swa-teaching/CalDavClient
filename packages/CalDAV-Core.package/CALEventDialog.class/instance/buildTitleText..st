toolbuilding
buildTitleText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		color: #titleColor;
		textColor: #titleTextColor; 
		getText: #eventTitle;
		editText: #eventTitle:;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'Title';
		frame: (self borderLeft @ self spacing corner: self borderRight @ self lineHeight)