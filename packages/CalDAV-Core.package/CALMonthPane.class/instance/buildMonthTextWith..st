toolbuilder
buildMonthTextWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: #monthText;
		enabled: false;
		frame: (self buttonWidth @ 0 corner: (1 - self buttonWidth) @ self buttonHeight);
		yourself