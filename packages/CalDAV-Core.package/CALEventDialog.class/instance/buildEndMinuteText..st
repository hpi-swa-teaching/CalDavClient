toolbuilding
buildEndMinuteText: aBuilder

	| height |
	
	height := (self lineHeight * 4) + (self spacing * 4).
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventEndMinute;
		editText: #eventEndMinute:;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'mm';
		frame: (0.79 @ height corner: self borderRight @ (height + self lineHeight))