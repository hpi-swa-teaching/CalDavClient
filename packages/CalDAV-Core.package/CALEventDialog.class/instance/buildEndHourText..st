toolbuilding
buildEndHourText: aBuilder

	| height |
	
	height := (self lineHeight * 4) + (self spacing * 4).
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventEndHour;
		editText: #eventEndHour:;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'hh';
		frame: (0.73 @ height corner: 0.78 @ (height +self lineHeight))