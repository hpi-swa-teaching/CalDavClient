toolbuilding
buildBeginHourInput: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventBeginHour;
		setText: #eventBeginHour:;
		help: 'hh';
		frame: (0.73@0.32 corner: 0.78@0.42)