toolbuilding
buildBeginHourText: aBuilder

	^ aBuilder pluggableDropDownListSpec new
		model: self;
		help: 'hh';
		frame: (0.73@0.32 corner: 0.78@0.42)