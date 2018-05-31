toolbuilder
buildDeleteEventButton: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #deleteSelectedCalendar;
		label: 'Delete Calendar';
		frame: (0 @ 0.8 corner: 0.1 @ 0.9);
		yourself