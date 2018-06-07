toolbuilder
buildAddEventButton: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openAddEventDialog;
		label: 'Add Event';
		frame: (0 @ 0.1 corner: 0.1 @ 0.7);
		yourself