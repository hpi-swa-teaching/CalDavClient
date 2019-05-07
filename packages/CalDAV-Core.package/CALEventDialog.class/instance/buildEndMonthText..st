toolbuilding
buildEndMonthText: aBuilder

	| height |
	
	height := (self lineHeight * 4) + (self spacing * 4).
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventEndMonth;
		editText: #eventEndMonth:;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'Month';
		frame: (0.31 @ height corner: 0.61 @ (height + self lineHeight))