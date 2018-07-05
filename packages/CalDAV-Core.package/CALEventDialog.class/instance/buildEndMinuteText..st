toolbuilding
buildEndMinuteText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventEndMinute;
		editText: #eventEndMinute:;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'mm';
		frame: (0.79 @ 0.43 corner: self borderRight @ 0.53)