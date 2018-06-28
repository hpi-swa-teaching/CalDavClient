as yet unclassified
buildWeekTextWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: self weekText;
		enabled: false;
		frame: (self buttonWidth@0 corner: (1 - self buttonWidth)@self buttonHeight);
		yourself