toolbuilding
buildBeginMonthText: aBuilder

	| height |
	
	height := (self lineHeight * 3) + (self spacing * 3).
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventBeginMonth;
		editText: #eventBeginMonth:;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'Month';
		frame: (0.31 @ height corner: 0.61 @ (height +self lineHeight))