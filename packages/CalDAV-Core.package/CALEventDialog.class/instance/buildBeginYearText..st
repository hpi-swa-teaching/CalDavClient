toolbuilding
buildBeginYearText: aBuilder

	| height |
	
	height := (self lineHeight * 3) + (self spacing * 3).
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventBeginYear;
		editText: #eventBeginYear:;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'Year';
		frame: (0.21 @ height corner: 0.3 @ (height + self lineHeight))