toolbuilding
buildBeginHourText: aBuilder

	| height |
	
	height := (self lineHeight * 3) + (self spacing * 3).
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventBeginHour;
		editText: #eventBeginHour:;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'hh';
		frame: (0.73 @ height corner: 0.78 @ (height + self lineHeight))