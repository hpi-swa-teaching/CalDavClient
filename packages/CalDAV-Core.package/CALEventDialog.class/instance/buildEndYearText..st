toolbuilding
buildEndYearText: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventEndYear;
		editText: #eventEndYear:;
		indicateUnacceptedChanges: false;
		readOnly: self isReadOnly; 
		help: 'Year';
		frame: (0.21@0.43 corner: 0.3@0.53)