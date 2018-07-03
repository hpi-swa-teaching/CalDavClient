toolbuilding
buildDayButtonWith: aBuilder

	^ aBuilder pluggableActionButtonSpec new
		model: self;
		action: #openDayView;
		enabled: #hasDate;
		label: #dateText;
		frame: (0 @ 0 corner: 1 @ self relativeDayButtonHeight);
		yourself