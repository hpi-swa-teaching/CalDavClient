toolbuilding
buildBeginDayText: aBuilder

	| height |
	
	height := (self lineHeight * 3) + (self spacing * 3).
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventBeginDay;
		editText: #eventBeginDay:;
		indicateUnacceptedChanges: false;
		help: 'Day';
		readOnly: self isReadOnly; 
		frame: (0.62 @ height corner: 0.72 @ (height +self lineHeight))