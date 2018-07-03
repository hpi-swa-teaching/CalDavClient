as yet unclassified
buildNextDayButton: aBuilder
	
	^ aBuilder pluggableActionButtonSpec new
		model: self;
		action: #nextDay;
		label: 'next day';
		frame: ((1 - self buttonWidth)@0 corner: 1@self buttonHeight).
	
	