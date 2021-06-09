toolbuilder
buildDeadlinesViewButton: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openDeadlinesView;
		label: 'DeadlinesView';
		enabled: #isDeadlinesViewNotActive;
		frame: (0 @ 0.2 corner: 0.1 @ 0.3);
		yourself