toolbuilding
buildEndYearInput: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventEndYear;
		setText: #eventEndYear:;
		help: 'Year';
		frame: (0.01@0.43 corner: 0.3@0.53)