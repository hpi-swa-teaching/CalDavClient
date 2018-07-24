toolbuilder
buildWeekTextWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: #weekText;
		enabled: false;
		frame: (self buttonWidth @ 0 corner: (1 - self buttonWidth) @ self buttonHeight);
		yourself