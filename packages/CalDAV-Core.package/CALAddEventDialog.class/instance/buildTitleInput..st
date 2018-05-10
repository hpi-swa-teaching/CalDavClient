toolbuilding
buildTitleInput: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #eventTitle;
		setText: #eventTitle:;
		help: 'Title';
		frame: (0.01@0.01 corner: self borderRight@0.1)