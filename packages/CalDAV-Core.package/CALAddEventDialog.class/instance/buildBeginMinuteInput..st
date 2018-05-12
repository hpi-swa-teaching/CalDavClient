toolbuilding
buildBeginMinuteInput: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventBeginMinute;
		editText: #eventBeginMinute:;
		indicateUnacceptedChanges: false;
		help: 'mm';
		frame: (0.79@0.32 corner: self borderRight@0.42)