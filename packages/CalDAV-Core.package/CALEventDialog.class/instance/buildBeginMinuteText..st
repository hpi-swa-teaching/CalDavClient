toolbuilding
buildBeginMinuteText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventBeginMinute;
		editText: #eventBeginMinute:;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'mm';
		frame: (0.79@0.32 corner: self borderRight@0.42)