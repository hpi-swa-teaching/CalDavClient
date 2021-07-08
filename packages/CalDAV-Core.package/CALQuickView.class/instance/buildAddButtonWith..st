toolbuilder
buildAddButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openAddEventDialog;
		enabled: true;
		label: '+';
		frame: (0.0 @ 0 corner: 0.3 @ 0.1);
		yourself