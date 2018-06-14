as yet unclassified
buildWeekTextWith: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #weekText;
		readOnly: true;
		frame: (self buttonWidth@0 corner: (1 - self buttonWidth)@self buttonHeight);
		indicateUnacceptedChanges: false;
		yourself