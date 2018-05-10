toolbuilding
buildBeginDayInput: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventBeginDay;
		setText: #eventBeginDay:;
		help: 'Day';
		frame: (0.62@0.32 corner: 0.72@0.42)