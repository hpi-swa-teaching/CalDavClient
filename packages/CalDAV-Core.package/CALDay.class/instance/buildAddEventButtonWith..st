toolbuilding
buildAddEventButtonWith: aBuilder

	| y |
	
	y := self relativeDayButtonHeight.
	^ aBuilder pluggableActionButtonSpec new
		model: self;
		action: #openAddEventDialog;
		enabled: #hasDate;
		label: '+';
		frame: (0 @ y corner: 1 @ (y + self relativeAddButtonHeight));
		yourself