toolbuilding
buildTitleText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		color: #titleColor;
		getText: #eventTitle;
		editText: #eventTitle:;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'Title';
		frame: (0.01@0.01 corner: self borderRight@0.1)