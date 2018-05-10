toolbuilding
buildEndMonthInput: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventEndMonth;
		setText: #eventEndMonth:;
		help: 'Month';
		frame: (0.31@0.43 corner: 0.61@0.53)