toolbuilding
buildEndHourInput: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventEndHour;
		editText: #eventEndHour:;
		indicateUnacceptedChanges: false;
		help: 'hh';
		frame: (0.73@0.43 corner: 0.78@0.53)