toolbuilder
buildPreviousWeekButton: aBuilder
	
	^ aBuilder pluggableActionButtonSpec new
		model: self;
		action: #previousWeek;
		label: 'previous';
		frame: (0 @ 0 corner: self buttonWidth @ self buttonHeight);
		yourself