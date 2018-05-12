toolbuilding
buildBeginDayText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventBeginDay;
		editText: #eventBeginDay:;
		indicateUnacceptedChanges: false;
		help: 'Day';
		readOnly: self isReadOnly; 
		frame: (0.62@0.32 corner: 0.72@0.42)