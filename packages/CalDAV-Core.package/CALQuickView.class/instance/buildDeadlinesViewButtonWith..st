toolbuilder
buildDeadlinesViewButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openDeadlinesView;
		label: 'DeadlinesView';
		enabled: true;
		frame: (0 @ 0 corner: 0.5 @ 0.1);
		yourself