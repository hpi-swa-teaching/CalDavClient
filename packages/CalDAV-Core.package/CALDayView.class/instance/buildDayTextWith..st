as yet unclassified
buildDayTextWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: #dayText;
		enabled: false;
		frame: (self buttonWidth @ 0 corner: (1 - self buttonWidth) @ self buttonHeight);
		yourself