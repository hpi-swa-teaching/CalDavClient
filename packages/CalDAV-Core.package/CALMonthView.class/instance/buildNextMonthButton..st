as yet unclassified
buildNextMonthButton: aBuilder
	
	^ aBuilder pluggableActionButtonSpec new
		model: self;
		action: #previousMonth;
		label: 'nextMonth';
		frame: ((1 - self buttonWidth)@0 corner: 1@self buttonHeight).
	
	