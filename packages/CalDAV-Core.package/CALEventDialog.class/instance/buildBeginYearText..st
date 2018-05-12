toolbuilding
buildBeginYearText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventBeginYear;
		editText: #eventBeginYear:;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'Year';
		frame: (0.01@0.32 corner: 0.3@0.42)