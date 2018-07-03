toolbuilder
buildPreviousMonthButton: aBuilder
	
	^ aBuilder pluggableActionButtonSpec new
		model: self;
		action: #previousMonth;
		label: 'previousMonth';
		frame: (0 @ 0 corner: self buttonWidth @ self buttonHeight)
	
	