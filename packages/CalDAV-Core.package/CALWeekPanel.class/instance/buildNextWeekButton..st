as yet unclassified
buildNextWeekButton: aBuilder
	
	^ aBuilder pluggableActionButtonSpec new
		model: self;
		action: #nextWeek;
		label: 'next week';
		frame: ((1 - self buttonWidth) @ 0 corner: 1 @ self buttonHeight);
		yourself