toolbuilder
buildDeadlinesViewButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openDeadlinesView;
		label: 'DeadlinesView';
		enabled: true;
		frame: (0.4 @ 0 corner: 0.7 @ 0.1);
		yourself