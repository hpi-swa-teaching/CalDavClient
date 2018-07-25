toolbuilding
buildBeginMinuteText: aBuilder

	| height |
	
	height := (self lineHeight * 3) + (self spacing * 3).
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventBeginMinute;
		editText: #eventBeginMinute:;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'mm';
		frame: (0.79 @ height corner: self borderRight @ (height + self lineHeight))