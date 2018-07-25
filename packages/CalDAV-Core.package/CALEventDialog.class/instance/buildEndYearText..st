toolbuilding
buildEndYearText: aBuilder

	| height |
	
	height := (self lineHeight * 4) + (self spacing * 4).
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventEndYear;
		editText: #eventEndYear:;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'Year';
		frame: (0.21 @ height corner: 0.3 @ (height +self lineHeight))