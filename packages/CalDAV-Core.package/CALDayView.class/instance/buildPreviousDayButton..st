accessing
buildPreviousDayButton: aBuilder
	
	^ aBuilder pluggableActionButtonSpec new
		model: self;
		action: #previousDay;
		label: 'previous day';
		frame: (0@0 corner: self buttonWidth@self buttonHeight).
	
	