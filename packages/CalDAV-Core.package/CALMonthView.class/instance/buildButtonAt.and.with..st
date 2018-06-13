toolbuilder
buildButtonAt: aRow and: aColumn with: aBuilder

	| button |
	
	button := aBuilder pluggableActionButtonSpec new
		model: (self days at: (aRow - 1) * 7 + aColumn);
		action: #openDayView;
		frame: (self textFrameWith: aRow and: aColumn);
		yourself.
	^ button label: button model dateText