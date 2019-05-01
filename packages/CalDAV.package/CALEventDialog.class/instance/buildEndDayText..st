toolbuilding
buildEndDayText: aBuilder

	| height |
	
	height := (self lineHeight * 4) + (self spacing * 4).
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventEndDay;
		editText: #eventEndDay:;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'Day';
		frame: (0.62 @ height corner: 0.72 @ (height + self lineHeight))