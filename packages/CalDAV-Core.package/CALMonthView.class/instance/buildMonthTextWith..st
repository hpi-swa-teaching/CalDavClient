as yet unclassified
buildMonthTextWith: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #monthText;
		readOnly: true;
		frame: (self buttonWidth@0 corner: (1 - self buttonWidth)@self buttonHeight);
		indicateUnacceptedChanges: false;
		yourself