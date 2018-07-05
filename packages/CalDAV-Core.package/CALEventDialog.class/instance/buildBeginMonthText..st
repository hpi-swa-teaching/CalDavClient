toolbuilding
buildBeginMonthText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventBeginMonth;
		editText: #eventBeginMonth:;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'Month';
		frame: (0.31 @ 0.32 corner: 0.61 @ 0.42)