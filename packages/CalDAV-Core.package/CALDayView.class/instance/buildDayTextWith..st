as yet unclassified
buildDayTextWith: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #dayText;
		readOnly: true;
		frame: (self buttonWidth@0 corner: (1 - self buttonWidth)@self buttonHeight);
		indicateUnacceptedChanges: false;
		yourself