toolbuilder
buildMonthViewButton: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openMonthView;
		label: 'Month View';
		enabled: #isMonthViewNotActive;
		frame: (0 @ 0 corner: 0.1 @ 0.1);
		yourself