toolbuilder
buildRefreshButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #updateQuickView;
		enabled: true;
		label: 'Refresh';
		frame: (0.3 @ 0 corner: 0.4 @ 0.1);
		yourself