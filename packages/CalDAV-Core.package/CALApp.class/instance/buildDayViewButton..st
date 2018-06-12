toolbuilder
buildDayViewButton: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openDayView;
		label: 'Day View';
		frame: (0 @ 0.1 corner: 0.1 @ 0.2);
		yourself