toolbuilder
buildPreviousMonthButton: aBuilder
	
	^ aBuilder pluggableActionButtonSpec new
		model: self;
		action: #previousMonth;
		label: 'previous';
		frame: (0 @ 0 corner: self buttonWidth @ self buttonHeight)