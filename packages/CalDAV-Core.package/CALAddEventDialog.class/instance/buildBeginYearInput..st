toolbuilding
buildBeginYearInput: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventBeginYear;
		setText: #eventBeginYear:;
		help: 'Year';
		frame: (0.01@0.32 corner: 0.3@0.42)