toolbuilder
buildButtonAt: aRow and: aColumn with: aBuilder

	^ aBuilder pluggableActionButtonSpec new
		model: (self days at: (aRow - 1) * 7 + aColumn);
		action: #openDayView;
		label: #dateText;
		frame: (self textFrameWith: aRow and: aColumn);
		yourself