toolbuilding
buildEndMinuteInput: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventEndMinute;
		editText: #eventEndMinute:;
		indicateUnacceptedChanges: false;
		help: 'mm';
		frame: (0.79@0.43 corner: self borderRight@0.53)