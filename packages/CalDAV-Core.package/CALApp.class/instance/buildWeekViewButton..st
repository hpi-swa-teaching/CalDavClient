toolbuilder
buildWeekViewButton: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openWeekView;
		label: 'Week View';
		frame: (0 @ 0.1 corner: 0.1 @ 0.2);
		yourself