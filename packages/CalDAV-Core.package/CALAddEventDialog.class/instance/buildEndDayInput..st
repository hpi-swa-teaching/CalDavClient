toolbuilding
buildEndDayInput: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventEndDay;
		setText: #eventEndDay:;
		help: 'Day';
		frame: (0.62@0.43 corner: 0.72@0.53)