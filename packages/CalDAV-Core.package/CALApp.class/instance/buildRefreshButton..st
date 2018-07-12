toolbuilder
buildRefreshButton: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #refreshCalendars;
		label: 'Refresh';
		frame: (0 @ 0.8 corner: 0.1 @ 0.9);
		yourself