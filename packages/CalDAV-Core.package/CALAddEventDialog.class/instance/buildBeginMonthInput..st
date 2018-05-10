toolbuilding
buildBeginMonthInput: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventBeginMonth;
		setText: #eventBeginMonth:;
		help: 'Month';
		frame: (0.31@0.32 corner: 0.61@0.42)